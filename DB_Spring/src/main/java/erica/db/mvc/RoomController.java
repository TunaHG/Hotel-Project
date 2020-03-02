package erica.db.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RoomController {
	@Autowired
	RoomDAO dao;

	// Print All Room
	@RequestMapping("staffroom")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		
		// Get All Room
		List<RoomVO> list = dao.getAllRoom();
		
		// List값 Model 지정
		mv.addObject("list", list);
		
		// View 지정
		mv.setViewName("staffroom");
		
		System.out.println("Controller:\tPrint All Room");
		return mv;
	}

}
