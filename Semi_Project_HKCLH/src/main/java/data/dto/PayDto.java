package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Alias("Pay")
@Data

public class PayDto {

	private int payid;
	
	private String mid;
	private Timestamp pydate;
	
	private String pyname;
	private String pyphoto;
	private int pyprice;
	
	private String pyoption;
	private int pyquantity;
	private String pydelivery;
}
