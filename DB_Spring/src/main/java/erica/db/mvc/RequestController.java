package erica.db.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RequestController {
	@Autowired
	RequestDAO dao;
	
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
	
}
