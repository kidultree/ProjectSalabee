package data.controller;

import java.util.Map;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MemberDto;
import data.mapper.CartMapperInter;
import data.mapper.LoginMapperInter;
import data.mapper.MemberMapperInter;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired MemberMapperInter memberMapper;
	@Autowired LoginMapperInter loginMapper;
	@Autowired CartMapperInter cartMapper;

	
	@GetMapping()
	public ModelAndView mypage(@RequestParam String mId) {
		ModelAndView mview=new ModelAndView();
		List<MemberDto> dto=memberMapper.getmemberData(mId);
	
		mview.addObject("dto", dto);
		
		
		mview.setViewName("/mypage/mypageform");
		return mview;
	}
}
