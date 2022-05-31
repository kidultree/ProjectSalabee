package data.mapper;


import org.apache.ibatis.annotations.Mapper;

import data.dto.PayDto;

@Mapper
public interface PayMapperInter {

	public void insertPay(PayDto dto);
	
}
