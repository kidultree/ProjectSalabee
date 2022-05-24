package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("qna")
@Data
public class QnADto {

	private int qnum;
	private String qcate;
	private String qtitle;
	private String qname;
	private String qcontent;
	private String qimg;
	private String qstate;
	private Timestamp qdate;
	private String mId;
}
