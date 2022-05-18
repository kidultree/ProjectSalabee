package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.type.Alias;

import data.dto.TestDto;

@Alias("test")
@Mapper
public interface TestMapperInter {
	public List<TestDto> getAll();
}
