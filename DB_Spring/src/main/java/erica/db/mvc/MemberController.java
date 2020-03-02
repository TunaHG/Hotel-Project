package erica.db.mvc;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;
	
	// Login 페이지 호출
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		// 혹시 Session이 있는 상태로 접근하면 Session을 제거함
		session.invalidate();
		// Login 페이지 호출
		return "loginorjoin";
	}
	
	// Login 처리 진행
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response, MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		HttpSession session;
		
		// 로그인의 결과값 
		MemberVO result = dao.loginMember(vo);
		mv.addObject("result", result);
		
		// result값이 null이면 해당 값이 존재하지 않으므로 로그인 실패
		if(result == null) {
			try {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인에 실패했습니다.')");
				script.println("</script>");
			} catch(Exception e) {
				e.printStackTrace();
			}
			System.out.println("Controller:\tLogin Fail, Record is not exist.");
			mv.setViewName("loginorjoin");
		}
		// result값이 존재하면 member table에 값이 존재함
		else {
			// 정보가 존재하면 session으로 넘겨줘서 로그인이 되어있는 상태로 만듬
			session = request.getSession(true);
			session.setAttribute("member", result);
			
			// Staff라면, 메인사이트가 아닌 호텔 관리 사이트로 이동
			if(result.getStaff().equals("Staff") || result.getStaff().equals("admin")) {
				System.out.println("Controller:\tStaff Login Success!");
				mv.setViewName("staffmain");
			}
			// Client라면, 메인사이트로 이동
			else {
				System.out.println("Controller:\tClient Login Success!");
				mv.setViewName("main");
			}
		}
		// ModelAndView 반환
		return mv;
	}
	
	// Logout 처리 진행
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// Session 제거
		session.invalidate();
		System.out.println("Controller:\tLogin Session remove");
		
		// Main 페이지 호출
		return "main";
	}
	
	// Join 페이지 호출
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		// Join 페이지 호출
		return "loginorjoin";
	}
	
	// Join 처리 진행
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String joinProcess(HttpServletResponse response ,MemberVO vo) {
		// MemberID, Phone 중복 체크
		int check = dao.checkJoin(vo);
		
		// 0이 아니라면 중복된 값이 있다는 의미. 가입을 안하고 회원가입창으로 돌려보낸다.
		if(check != 0) {
			System.out.println("Controller:\tJoin Fail.");
			try {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입에 실패했습니다.\n중복된 아이디 혹은 전화번호입니다.')");
				script.println("</script>");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 0이라면 중복된 값이 없으므로 가입을 진행한 후 로그인창으로 돌려보낸다.
		else {
			// DAO Join 처리
			dao.joinMember(vo);
			System.out.println("Controller:\tJoin Success!");
		}
		// Login or Join 페이지 호출
		return "loginorjoin";
	}
	
	// Staff Main 페이지 호출
	@RequestMapping("staffmain")
	public String staffMain(HttpServletRequest request) {
		HttpSession session;
		
		// StaffMain으로 진입할 시 Session체크
		session = request.getSession(false); // false는 Session이 없을시 null을 반환
		
		// Session이 없다면 접근 유저가 Staff인지 아닌지 모르므로 Login창을 호출
		if(session == null) {
			System.out.println("Controller:\tWrong Staff Session");
			return "redirect:/login";
		}
		// Session이 있다면 해당 메소드로 접근하는 유저는 모두 Staff이므로 그대로 staffmain 페이지 호출
		else {
			System.out.println("Controller:\tRight Staff Session");
			return "staffmain";
		}
	}
	
	// Staff Page 관리 부분
	// Client List 호출
	@RequestMapping("staffclient")
	public ModelAndView client() {
		// ModelAndView 객체 생성
		ModelAndView mv = new ModelAndView();
		// 모든 Client를 List<>를 사용하여 가져옴
		List<MemberVO> list = dao.getAllClient();
		System.out.println("Controller:\tGet All Client data");
		
		// 가져온 모든 Client를 Model로 넘겨줌
		mv.addObject("list", list);
		// View 지정
		mv.setViewName("staffclient");
		System.out.println("Controller:\tPrint All Client data");
		
		return mv;
	}
	
	// Client Data Update Form
	@RequestMapping(value = "/updatemember", method = RequestMethod.GET)
	public ModelAndView updateClientForm(String memberid) {
		ModelAndView mv = new ModelAndView();
		// Client의 정보를 가져옴
		MemberVO vo = dao.getOneMember(memberid);
		System.out.println("Controller:\tGet One Member data");
		
		// 가져온 Client 정보를 Model로 넘겨줌
		mv.addObject("vo", vo);
		// View 지정
		mv.setViewName("memberupdateform");
		System.out.println("Controller:\tPrint Member data to Update Form");
		
		return mv;
	}
	
	// Client Data Update
	@RequestMapping(value = "/updatemember", method = RequestMethod.POST)
	public String updateClient(MemberVO vo) {
		// DAO Join 처리
		dao.updateMember(vo);
		System.out.println("Controller:\tUpdate Member Success!");
		
		// Staff인지 Client인지에 대한 다른 View 지정
		if(vo.getStaff().equals("Client")) {
			System.out.println("Controller:\tClient Data Update");
			return "redirect:/staffclient";
		} else {
			System.out.println("Controller:\tStaff Data Update");
			return "redirect:/staff";
		}
	}
	
	// Member Data Delete
	@RequestMapping("/deletemember")
	public String deleteMember(String memberid) {
		// View를 지정하기 위한 해당 MemberID의 객체 생성
		MemberVO vo = dao.getOneMember(memberid);
		
		// Delete 진행
		dao.deleteMember(memberid);
		System.out.println("Controller:\tDelete Member Success!");
		
		// Staff에 따른 View지정
		if(vo.getStaff().equals("Client")) {
			return "redirect:/staffclient";
		} else {
			return "redirect:/staff";
		}
	}
	
	// Staff List 호출
	@RequestMapping("staff")
	public ModelAndView staff() {
		ModelAndView mv = new ModelAndView();
		// 모든 Staff Data를 List<>로 가져옴
		List<MemberVO> list = dao.getAllStaff();
		System.out.println("Controller:\tGet All Staff data");
		
		// 가져온 Staff Data를 Model로 넘겨줌
		mv.addObject("list", list);
		// View 지정
		mv.setViewName("staff");
		System.out.println("Controller:\tPrint All Staff data");
		
		return mv;
	}
	
	// Update Client To Staff
	@RequestMapping("tostaff")
	public String toStaff(String memberid) {
		dao.updateToStaff(memberid);
		System.out.println("Controller:\tUpdate Client To Staff");
		return "redirect:/staff";
	}
	
	// Update Staff To Client
	@RequestMapping("toclient")
	public String toClient(String memberid) {
		dao.updateToClient(memberid);
		System.out.println("Controller:\tUpdate Staff To Client");
		return "redirect:/staffclient";
	}
	
	// Print Staff Hotel Page
	@RequestMapping("staffhotel")
	public String hotel() {
		return "staffhotel";
	}
}
