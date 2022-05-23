package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("qna")
@Data
public class QnADto {

	private int qNum;
	private String qCate;
	private String qTitle;
	private String qName;
	private String qContent;
	private String qImg;
	private String qState;
	private Timestamp qDate;
	private String mId;
	
}
