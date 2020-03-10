package erica.db.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RequestController {
	@Autowired
	RequestDAO dao;
	
	@Autowired
	MemberDAO mdao;
	
	@Autowired
	RoomDAO rdao;
	
	// Print All Request
	@RequestMapping("staffrequest")
	public ModelAndView request() {
		ModelAndView mv = new ModelAndView();
		
		// Get All Request
		List<RequestVO> list = dao.getAllRequest();
		
		// List값 Model 지정
		mv.addObject("list", list);
		
		// View 지정
		mv.setViewName("staffrequest");
		
		System.out.println("Controller:\tPrint All Request");
		return mv;
	}
	
	// Goto Request Insert Form
	@RequestMapping(value = "insertrequest", method = RequestMethod.GET)
	public String insertRequestForm() {
		return "requestinsertform";
	}
	
	// Insert Request
	@RequestMapping(value = "insertrequest", method = RequestMethod.POST)
	public String insertRequest(RequestVO vo) {
		// Insert SQL Query Execute
		dao.insertRequest(vo);
		
		System.out.println("Controller:\tInsert Work Success!");
		
		return "redirect:/staffrequest";
	}
	
	// Goto Request Update Form
	@RequestMapping(value = "updaterequest", method = RequestMethod.GET)
	public ModelAndView updateRequestForm(int reqno) {
		ModelAndView mv = new ModelAndView();
		
		// Request Model Create, Set
		RequestVO request = dao.getOneRequest(reqno);
		mv.addObject("request", request);
		
		mv.setViewName("requestupdateform");
		
		return mv;
	}
	
	// Update Request
	public String updateRequest(RequestVO vo) {
		// Update SQL Query Execute
		dao.updateRequest(vo);
		
		System.out.println("Controller:\tUpdate Request Success!");
		
		return "redirect:/staffrequest";
	}
	
	// Delete Request
	public String deleteRequest(int reqno) {
		// Delete SQL Query Execute
		dao.deleteRequest(reqno);
		System.out.println("Controller:\tDelete Request Success!");
		
		return "redirect:/staffrequest";
	}
}
