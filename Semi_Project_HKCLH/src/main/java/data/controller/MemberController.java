package data.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void insert(@Valid @ModelAttribute MemberDto dto,
			Errors errors,
			Model model,
			@RequestParam String addr1,
			@RequestParam String addr2)
	{
		dto.setMAddress(addr1+" "+addr2);
		

		membermapper.insertMember(dto);	
		
	}
	

	
}
