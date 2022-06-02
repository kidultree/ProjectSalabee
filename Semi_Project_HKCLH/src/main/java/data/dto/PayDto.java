package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Alias("Pay")
@Data

public class PayDto {

	private String mid;
	private String mId;
	
	private int pnum;
	private int oid;
	
	private int pyquantity;
	
}
