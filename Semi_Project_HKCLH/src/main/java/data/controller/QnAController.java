package data.controller;

import java.io.File;
import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Util.FileUtil;
import data.dto.NoticeDto;
import data.dto.QnADto;
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
	
	@PostMapping("/insert")
	   public String insert
	   (@ModelAttribute QnADto dto,
		@RequestParam String qcate,
		HttpSession session,
		HttpServletRequest request
			   )
	   {
		dto.setQcate(qcate);
		
			//db update
	      qnaMapper.insertQnA(dto);
	      return "redirect:list";
	   }
}
