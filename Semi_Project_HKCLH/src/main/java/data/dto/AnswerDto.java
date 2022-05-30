package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Alias("answer")
@Data
public class AnswerDto {

	private int aansnum;
	private int qnum;
	private String mname;
	private String mid;
	private String acontent;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/Seoul")
	private Timestamp adate;
}
