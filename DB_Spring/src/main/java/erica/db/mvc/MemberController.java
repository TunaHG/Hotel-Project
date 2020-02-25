package erica.db.mvc;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	public String loginProcess() {
		HttpSession session;
	}
}
