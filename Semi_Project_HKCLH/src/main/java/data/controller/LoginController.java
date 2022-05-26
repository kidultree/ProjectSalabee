package data.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.mapper.MemberMapperInter;


@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired MemberMapperInter memberMapper;

	@GetMapping("/loginform")
	public String login()
	{
		
		return "/login/loginform";
	}
	
	
	//로그인
	@PostMapping("/process")
	public ModelAndView process(@RequestParam String mId,
			@RequestParam String mPassword,
			@RequestParam(required = false) String chkid,
			HttpSession session) {
				
		Map<String, String> map=new HashMap<>();
		ModelAndView mview = new ModelAndView();
		
		map.put("mId", mId);
		map.put("mPassword", mPassword);
		
		int n=memberMapper.login(map);
		
		if(n==1)
		{
			session.setAttribute("mId", mId);
			
			//로그인한 아이디의 mName값 얻어오기
			String mName=memberMapper.getmName(mId);
			session.setAttribute("mName", mName);
			session.setAttribute("mId", mId);
			session.setAttribute("saveok", chkid==null?"no":"yes");
			session.setAttribute("loginok", "yes");
			
			
			mview.setViewName("redirect:/");
			return mview;

		}
		else {			
			
			mview.setViewName("redirect:/login/loginform");
			session.setAttribute("error", "error");
			
			return mview;

		}
}
	
	
	@GetMapping("/logout")
	//@ResponseBody
	public String logout(HttpSession session)
	{
		session.removeAttribute("loginok");
		session.removeAttribute("error");		
		return "redirect:/";
	}
	
	@GetMapping("/findid")
	public String findid() {
		
		return "/login/findid";
	}
	
	@GetMapping("/findpass")
	public String findpass() {
		
		return "/login/findpass";
	}
}
