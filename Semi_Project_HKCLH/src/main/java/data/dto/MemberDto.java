package data.dto;

import java.sql.Timestamp;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Alias("member")
@Data

public class MemberDto {

	private int mNum;
	
	@NotBlank(message = "아이디는 필수 입력 값입니다.")
	private String mId;
	
	@NotBlank(message = "이름은 필수 입력 값입니다.")
	private String mName;
	
	@NotBlank
	private String mBirth;
	
	@NotBlank(message = "비밀번호는 필수 입력 값입니다.")
	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-zA-Z])(?=.*\\W)(?=\\S+$).{8,16}", message = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.")
	private String mPassword;
	
	private int mPost;
	private String mAddress; //addr1+addr2
	
	@NotBlank
	private String mPhone;
	
	private Timestamp mDate;
	
	@NotBlank(message = "이메일은 필수 입력 값입니다.")
	@Email(message = "이메일 형식에 맞지 않습니다")
	private String mEmail;
	
	
}
