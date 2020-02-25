package erica.db.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home() {
		return "main";
	}
	
	@RequestMapping("/hotelinfo")
	public String hotelinfo() {
		return "hotelinfo";
	}
	
	@RequestMapping("/managerinfo")
	public String managerinfo() {
		return "managerinfo";
	}
}
