	package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("cart")  //sql.xml - parameterType="cart"
@Data
public class CartDto {
	private String mid;
	private String pnum;
	private int cquantity;
	
	private String cid;
}
