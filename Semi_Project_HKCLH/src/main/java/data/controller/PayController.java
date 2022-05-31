package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import data.dto.PayDto;
import data.mapper.PayMapperInter;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired PayMapperInter mapper;

	
	@PostMapping("/insert")
	public String insert(@ModelAttribute PayDto dto)
	{
		
		mapper.insertPay(dto);	
		
		return "redirect:/";		
	}
	
	
}
