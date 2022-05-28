package data.mapper;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface LoginMapperInter {
	
	public int findmId(String mName,String mEmail);

}
