package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("orderinfo")  //sql.xml - parameterType="cart"
@Data
public class OrderInfoDto {
	private String mid;
	
	private int pnum;
	private int oquantity;
	private int oid;  
}
