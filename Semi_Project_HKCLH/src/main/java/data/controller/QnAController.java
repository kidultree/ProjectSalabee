package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import data.mapper.QnAMapperInter;

@Controller
@RequestMapping("/qna")
public class QnAController {

	@Autowired
	private QnAMapperInter qnaMapper;
	
	@GetMapping("/form")
	public String form() {
		return "/qna/qnaform";
		
	}
	
	@GetMapping("/list")
	public String list() {
		return "/qna/qnalist";
	}
}
