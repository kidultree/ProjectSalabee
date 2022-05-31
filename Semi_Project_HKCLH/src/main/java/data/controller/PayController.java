package data.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.PayDto;
import data.mapper.PayMapperInter;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired PayMapperInter mapper;
	
	
	@PostMapping("/complete")
	public String insert(
			@RequestParam String mid, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("param_string");
		String setParamString [] = paramString.split("[|]");
		
		//멤버id로 조회한 주문정보 중 orderid가 가장 큰 거를 조회
//		Integer orderId = mapper.selectLastOrderId(mid);
//		if(orderId == null) {
//			orderId = 0;
//		}else {
//			orderId += 1;
//		}
		
		if(setParamString.length  > 0) {
			for (int i = 0; i < setParamString.length; i++) {
				
				//String 배열을 int 배열로...
				int intArr [] = Arrays.stream(setParamString[i].split(",")).mapToInt(Integer::parseInt).toArray();
			
				PayDto dto = new PayDto();
				dto.setMid(mid);
				
				dto.setPnum(intArr[0]);
				dto.setOid(intArr[1]);
				dto.setPyquantity(intArr[2]);
				
				mapper.insertPay(dto);
				
			}
		}
		return "/cart/buyform";		
	}
}
