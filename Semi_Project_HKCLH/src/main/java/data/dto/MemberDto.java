package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("member")
@Data
public class MemberDto {

	private int mNum;
	private String mId;
	private String mName;
	private String mBirth;
	private String mPassword;
	private int mPost;
	private String mAddress;
	private String mPhone;
	private Timestamp mDate;
	private String mEmail;
}
