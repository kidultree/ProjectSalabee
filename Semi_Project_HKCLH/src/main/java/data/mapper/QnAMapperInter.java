package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.QnADto;

@Mapper
public interface QnAMapperInter {

	public void insertQnA(QnADto dto);
	public void updateQnA(QnADto dto);
	public void deleteQnA(int num);
	
	public List<QnADto> getQnAList();
	
	public QnADto getQnA(int num);
	public int getToTalCount();
}
