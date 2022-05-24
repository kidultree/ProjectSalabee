package data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import data.dto.ProductDto;
import data.mapper.MenuMapperInter;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private MenuMapperInter menuMapper;

	@GetMapping("/form")
	public String form() {
		return "/menu/menuform";
	}

	@GetMapping("/list")
	public String list() {
		return "/menu/menulist";
	}

	 @PostMapping("/insert")
	   public String insert
	   (@ModelAttribute ProductDto dto)
	   {
	      menuMapper.insertProduct(dto);
	      return "redirect:list";
	   }

}