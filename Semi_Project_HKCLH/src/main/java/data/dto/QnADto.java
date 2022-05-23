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
	private String qImg;
	private String mId;
	private String qContent;
	private String qState;
	private Timestamp qDate;
	private int readcount;
	private int chu;
	private int totalchu;
	private int reg;
	private int restep;
	private int relevel;
	private int acount;
}
