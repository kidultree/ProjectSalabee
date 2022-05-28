package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.OrderInfoDto;

@Mapper
public interface OrderInfoMapperInter {

	public int selectLastOrderId(String mid);
	
	public int insertOrderInfo(OrderInfoDto dto);  //오더인포에 담기
	
	public List<Map<String,Object>> getOrderInfo(String mid, int orderId); //오더인포 상품출력
	
	public void deleteOrderInfo(int orderid); //상품 삭제
	
}  
