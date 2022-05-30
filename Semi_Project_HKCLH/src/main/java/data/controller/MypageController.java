package data.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		
		mview.setViewName("/mypage/myPage");
		return mview;
	}
	
	@GetMapping("/list")
	public String mylist() {
		return "/mypage/myList";
	}
	
	@GetMapping("/review")
	public String myreview() {
		return "/mypage/myReview";
	}
	
	@GetMapping("/qna")
	public String myqna() {
		return "/mypage/myQnA";
	}
	
	@GetMapping("/alter")
	public String myalter() {
		return "/mypage/myAlter";
	}
	
	@GetMapping("/delete")
	public String mydelete() {
		return "/mypage/myDelete";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute MemberDto dto) {
		
		memberMapper.alterMember(dto);
		
		return "/mypage/myAlter";
		
	}
	
	
	@PostMapping("/memberdelete")
	@ResponseBody
	public Map<String, String> memberdelete(@RequestParam String mId,
			@RequestParam String mPassword,
			HttpSession session)
			
	{		
		Map<String, String> map=new HashMap<>();
		map.put("mId", mId);
		map.put("mPassword", mPassword);
		
		int n=memberMapper.login(map);
		
		if(n==1) {
			
			session.removeAttribute("loginok");
			map.put("msg", "ok");
			memberMapper.deleteMember(mId);
			return map;
		
		}else {
			map.put("msg", "no");
			return map;
		}

	}
	
	
	

	

	
	
	
}
