package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewMapperInter reviewMapper;
	
	@GetMapping("/form")
	public String form() {
		return "/review/reviewform";
	}
	
	
		@GetMapping("/list")
		public String list() {
			return "/review/reviewlist";
		}
		
		
		
		@PostMapping("/insert")
		public String insert
		(@ModelAttribute ReviewDto dto)
		{
			reviewMapper.insertReview(dto);
			return "redirect:list";
		}
	}

