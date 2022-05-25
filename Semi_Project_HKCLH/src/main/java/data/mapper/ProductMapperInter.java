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

   public List<ProductDto> getProductList();
   public ProductDto getProduct(int pnum); //()dto에서 받아옴
   public void deleteProduct(int pnum); 
   public void updateProduct(ProductDto dto);
   public int getTotalProductCount();
   

}