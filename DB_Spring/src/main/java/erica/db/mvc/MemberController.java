package erica.db.mvc;

import javax.servlet.http.HttpServletRequest;
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
	public ModelAndView loginProcess(HttpServletRequest request, MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		HttpSession session;
		
		// 로그인의 결과값 
		MemberVO result = dao.login(vo);
		mv.addObject("result", result);
		
		// result값이 null이면 해당 값이 존재하지 않으므로 로그인 실패
		if(result == null) {
			System.out.println("Controller:\tLogin Fail, Record is not exist.");
			mv.setViewName("loginfail");
		}
		// result값이 존재하면 member table에 값이 존재함
		else {
			// 정보가 존재하면 session으로 넘겨줘서 로그인이 되어있는 상태로 만듬
			session = request.getSession(true);
			session.setAttribute("member", result);
			
			// Staff라면, 메인사이트가 아닌 호텔 관리 사이트로 이동
			if(result.getStaff().equals("staff")) {
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
	public String joinProcess(MemberVO vo) {
		// DAO Join 처리
		dao.join(vo);
		System.out.println("Controller:\tJoin Success!");
		
		// Login 페이지 호출
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
			return "redirect:/login";
		}
		// Session이 있다면 해당 메소드로 접근하는 유저는 모두 Staff이므로 그대로 staffmain 페이지 호출
		else {
			return "staffmain";
		}
	}
}
