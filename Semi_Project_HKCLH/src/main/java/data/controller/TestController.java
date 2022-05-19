package data.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import data.dto.TestDto;
import data.mapper.TestMapperInter;



@RestController
public class TestController {
	
	@Autowired
	public TestMapperInter inter;
	@GetMapping("/")
	public List<TestDto> home()
	{
		List<TestDto> list=inter.getAll();
		//List<TestDto> list=inter.getAll();
		
		return list;
		
	}
		
}
