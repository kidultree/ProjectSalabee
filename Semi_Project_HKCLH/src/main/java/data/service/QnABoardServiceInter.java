package data.service;

import java.util.List;

import data.dto.QnADto;

public interface QnABoardServiceInter {
	public int getMaxNum();
	public void updateReStep(int reg, int restep);
	public int getTotalCount();
	public List<QnADto> getList(int start, int perpage);
	public void insertQnA(QnADto dto);
	public QnADto getData(int num);
	public void updateQnA(QnADto dto);
	public void deleteQnA(int num);
}
