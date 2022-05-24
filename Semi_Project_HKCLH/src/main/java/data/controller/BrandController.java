package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.CartDto;
import data.mapper.CartMapperInter;
import data.mapper.ProductMapperInter;


@Controller
@RequestMapping("/brand")
public class BrandController {	
	
	@GetMapping("/about")
	public String brandabout()
	{
		return "/barnd/about";		
	}

}
