package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ProductDto;

@Mapper
public interface ProductMapperInter {
   public void insertProduct(ProductDto dto);
   public List<ProductDto> getProductList(Map<String, Integer> map);
   public ProductDto getProduct(int num);
   public void deleteProduct(int num);
   public int getTotalCount();
}