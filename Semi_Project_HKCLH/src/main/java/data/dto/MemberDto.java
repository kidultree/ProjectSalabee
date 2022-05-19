package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("member")
@Data
public class MemberDto {

	private int mNum;
	private String mID;
	private String mName;
	private int mBirth;
	private String mPassword;
	private int mPost;
	private String mAdress;
	private Timestamp mDate;
}
