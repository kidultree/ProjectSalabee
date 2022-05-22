package data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.NoticeDto;
import data.dto.ProductDto;
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

	 @PostMapping("/insert")
	   public String insert
	   (@ModelAttribute NoticeDto dto)
	   {
	      noticeMapper.insertNotice(dto);
	      return "redirect:list";
	   }

}