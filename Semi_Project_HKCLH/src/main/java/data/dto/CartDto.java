package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("cart")  //sql.xml - parameterType="cart"
@Data
public class CartDto {
	private String mid;
	private String pnum;
	private int cquantity;
}