package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("notice")
@Data
public class NoticeDto {
	private int nNum;
	private int nCate;
	private String nTitle;
	private String nName;
	private String nContent;
	private String nImg;
	private String nPhoto;
	private Timestamp nDate;
	
}
