package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.NoticeDto;

@Mapper
public interface NoticeMapperInter {
	public void insertNotice(NoticeDto dto);
	public List<NoticeDto> getNoticeList(Map<String, Integer> map);
	public NoticeDto getNotice(int num);
	public void deleteProduct(int num);
	public int getTotalCount();
}
