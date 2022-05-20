package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login")
public class LoginController {

	@GetMapping("/loginform")
	public String login()
	{
		
		return "/login/loginform";
	}
	
	@GetMapping("/all")
	public String all()
	{
		return "/login/all";
	}
	
	@GetMapping("/member")
	public String meeber()
	{
		return "/login/member";
	}
	
	@GetMapping("/admin")
	public String admin()
	{
		return "/login/admin";
	}
}
