package erica.db.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PayController {
	@Autowired
	PayDAO dao;

	// Print All Pay
	@RequestMapping("staffpay")
	public ModelAndView pay() {
		ModelAndView mv = new ModelAndView();
		
		// Get All Pay
		List<PayVO> list = dao.getAllPay();
		
		// List값 Model 지정
		mv.addObject("list", list);
		
		// View 지정
		mv.setViewName("staffpay");
		
		System.out.println("Controller:\tPrint All Pay");
		return mv;
	}
	
}
