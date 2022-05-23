package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.QnADto;

@Mapper
public interface QnAMapperInter {
	public int getMaxNum();
	public void updateReStep(Map<String, Integer> map);
	public int getTotalCount();
	public List<QnADto> getList(Map<String, Integer> map); 
	public void insertQnA(QnADto dto);
	public void updateReadCount(int num);
	public QnADto getData(int num);
	public void updateChu(int num);
	public void updateTotalChu(int num);
	public void updateChu(Map <String, Integer> map);
	public void updateQnA(QnADto dto);
	public void deleteQnA(int num);
}
