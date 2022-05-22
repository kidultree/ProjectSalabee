package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public int getTotalCount();  //총개수 구하기
	public void insertMember(MemberDto dto);
	public int getSearchId(String id); //해당 아이디가 있으면 1 아니면 0
	public List<MemberDto> getAllMembers();
	public void deleteMember(String num);
	
	public String getSearchName(String id);
	
	public int login(Map<String, String> map);
}
