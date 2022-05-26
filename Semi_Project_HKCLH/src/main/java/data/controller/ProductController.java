package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Util.FileUtil;

import data.dto.ProductDto;
import data.mapper.ProductMapperInter;
@Controller
@RequestMapping("/product")
public class ProductController {

   @Autowired
   ProductMapperInter productMapper; //private?
   
   @GetMapping("/form") //보여주기
   public String form()
   {
      return "/product/productform";
   }

   @PostMapping("/insert") //값이나 상태변경
   public String insert(@ModelAttribute ProductDto dto,
		    @RequestParam MultipartFile upload,
			HttpSession session,
			HttpServletRequest request)
   {
	  //사진을 저장할 경우
	  String path=request.getServletContext().getRealPath("/save");
		
	  System.out.println("1:"+dto.getPnum());
	  String pphoto=upload.getOriginalFilename();
	  dto.setPphoto(pphoto);
	  try {
		upload.transferTo(new File(path+"\\"+pphoto));
	} catch (IllegalStateException | IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
      productMapper.insertProduct(dto);
      return "redirect:list";
   }

   @GetMapping("/list")
   public ModelAndView list()
   {
      ModelAndView mview=new ModelAndView();
      
      //mapper 로부터 총 갯수 가져오기
      int totalCount=productMapper.getTotalProductCount();
      List<ProductDto> list=productMapper.getProductList();
      //model에 저장
      mview.addObject("totalCount", totalCount);
      mview.addObject("list", list);

      mview.setViewName("/product/productlist");
      return mview;
   }
   
   
   @GetMapping("/goods")
	public String goods()
	{
		return "/product/goods";		
	}
	
   @GetMapping("/myset")
	public String myset()
	{
		return "/product/myset";		
	}
	
   @GetMapping("/detail")
   public ModelAndView detail(
		   @RequestParam int pnum
		   //,@RequestParam int currentPage
		   ) {
	   //num에 해당하는 dto얻기
	   ProductDto dto = productMapper.getProduct(pnum);
	   ModelAndView mview = new ModelAndView();
	   mview.addObject("dto",dto);
	   //mview.addObject("currentPage",currentPage);
	   mview.setViewName("/product/productdetail");
	   return mview;
	   
   }
   
   @GetMapping("/delete")
	 public String delete(
			 @RequestParam int pnum
			 //,@RequestParam int currentPage,
			 //HttpServletRequest request
			 ) {
	   	 //db에서 data삭제
	   	 productMapper.deleteProduct(pnum);
		 //페이지이동
		 return "redirect:list";
	 }
   
   //업데이트 만들어야함...
   //@GetMapping("/productupdateform")
}