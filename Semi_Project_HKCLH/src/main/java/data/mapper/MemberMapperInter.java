package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public int getTotalCount();  //총개수 구하기
	public void insertMember(MemberDto dto);
	public int getmId(String mId);
	
	public List<MemberDto> getmemberData(String mId);
	public void deleteMember(String num);
	
	public String getmName(String id);
	
	public int login(Map<String, String> map);
	
}
