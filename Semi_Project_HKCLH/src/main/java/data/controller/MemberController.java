package data.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired MemberMapperInter membermapper;

	@GetMapping("/joinform")
	public String joinform()
	{
		return "/member/MemberJoinForm";		
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute MemberDto dto)
	{
		
		
		
		membermapper.insertMember(dto);	
		
		return "/";		
	}
	

	
}
