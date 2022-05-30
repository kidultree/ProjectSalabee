package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import data.dto.AnswerDto;
import data.mapper.AnswerMapperInter;

@RestController
@RequestMapping("/answer")
public class AnswerRestController {

	@Autowired
	private AnswerMapperInter mapper;
	
	@PostMapping("/insert")
	public void insertAnswer(@ModelAttribute AnswerDto dto)
	{
		mapper.insertAnswer(dto);
	}
	
	@GetMapping("/list")
	public Map<String, Object> getAnswerList(@RequestParam int qnum) 
	{
		Map<String, Object> map = new HashMap<>();
		List<AnswerDto> alist = mapper.getAnswerList(qnum);
		map.put("count", alist.size());
		map.put("alist", alist);
		return map;
	}
	
	@GetMapping("/delete")
	public void deleteAnswer(@RequestParam int aansnum)
	{
		mapper.deleteAnswer(aansnum);
	}
	
}
