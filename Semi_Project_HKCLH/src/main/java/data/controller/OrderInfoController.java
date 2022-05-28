package data.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.OrderInfoDto;
import data.mapper.OrderInfoMapperInter;


@Controller
@RequestMapping("/orderinfo")
public class OrderInfoController {

	@Autowired OrderInfoMapperInter mapper;
	
	@PostMapping("/buy")
	public ModelAndView buy(
			@RequestParam String mid, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{  

		String paramString = request.getParameter("param_string");
		String setParamString [] = paramString.split("[|]");
		
		if(paramString.length() > 0) {
			for (int i = 0; i < paramString.length(); i++) {
				setParamString = paramString.split(",");
				
				//멤버id로 조회한 주문정보 중 orderid가 가장 큰 거를 조회
				int orderId = mapper.selectLastOrderId(mid);
				orderId += 1;
				
				OrderInfoDto dto = new OrderInfoDto();
				dto.setMid(mid);
				
				//for 문돌아서 insert
				//for 문 안에서 dto 셋하여 insert 수행
				
				dto.setPnum(setParamString[0]);
				
//				dto.setPnum(mid);
//				dto.setOid(mid);
//				dto.setOquantity(mid);
				mapper.insertOrderInfo(dto);
				
				//for 문 종료
				
			}
		}

		
		//for문 종료 후 orderId와 mid로 주문목록 조회
//		List<Map<String,Object>> orderList = mapper.getOrderInfo(mid, orderId);
		
		ModelAndView mview = new ModelAndView(); 
		
//		mview.addObject("orderList", orderList);
		
		mview.setViewName("/cart/buyform");
		return mview;		
	}



}
