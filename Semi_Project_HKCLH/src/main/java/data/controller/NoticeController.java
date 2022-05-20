package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import data.mapper.NoticeMapperInter;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeMapperInter noticeMapper;
	
	@GetMapping("/form")
	public String form() {
		return "/notice/noticeform";
	}
	
	@GetMapping("/list")
	public String list() {
		return "/notice/noticelist";
	}
	
}