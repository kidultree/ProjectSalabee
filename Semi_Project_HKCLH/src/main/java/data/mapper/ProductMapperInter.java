package data.mapper;

import java.util.List;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ProductDto;
import data.dto.ProductOptionDto;

@Mapper
public interface ProductMapperInter {
   public void insertProduct(ProductDto dto);
   public List<ProductDto> getProductList();
   
   
   public void deleteProduct(int pnum); 
   public void updateProduct(ProductDto dto);
   public int getTotalProductCount();
   
   //디테일
   public ProductDto getProduct(int pnum); //()dto에서 받아옴
   public List<ProductOptionDto> getProductOptionList(int pnum);//List 이차원배열
   
   
}