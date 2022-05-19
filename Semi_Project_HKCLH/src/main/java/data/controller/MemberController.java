package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Controller
public class MemberController {
	
	@Autowired MemberMapperInter membermapper;

	@GetMapping("/joinform")
	public String joinform()
	{
		return "/member/MemberJoinForm";		
	}
	
	@PostMapping("/insert")
	public void insert(@ModelAttribute MemberDto dto,
			@RequestParam String addr1,
			@RequestParam String addr2)
	{
		dto.setMAddress(addr1+" "+addr2);
		
		membermapper.insertMember(dto);
	}
	
}
