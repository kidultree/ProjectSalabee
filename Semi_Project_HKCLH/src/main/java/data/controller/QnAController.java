package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import data.dto.NoticeDto;
import data.dto.QnADto;
import data.mapper.QnAMapperInter;

@Controller
@RequestMapping("/qna")
public class QnAController {

	@Autowired
	private QnAMapperInter qnaMapper;
	
	@GetMapping("/form")
	public String form() {
		return "/qna/qnaform";
		
	}
	
	@GetMapping("/list")
	public ModelAndView list() {
		
		ModelAndView mview = new ModelAndView();
		
		List<QnADto> list = qnaMapper.getQnAList();
		//model에 저장
		mview.addObject("list",list);
		
		mview.setViewName("/qna/qnalist");
		return mview;
	}
	
	@PostMapping("/insert")
	   public String insert
	   (@ModelAttribute QnADto dto,	
		@RequestParam ArrayList<MultipartFile> upload,
		HttpSession session,
		HttpServletRequest request
			   )
	   {
		//사진을 저장할 경우
		String path = request.getServletContext().getRealPath("/save");
		
		//사진을 업로드 안했을 경우 photos 에 'no'라고 저장
		if(upload.get(0).getOriginalFilename().equals("")) {
			dto.setQimg("no");
		}else {
			FileUtil fileUtil = new FileUtil();
			String photos = "";
			for(MultipartFile f:upload)
			{
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				photos+=rename+",";
				
				File file = new File(path+"\\"+rename);
				try {
					f.transferTo(file); //save 폴더에 업로드됨
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//마지막 컴마 제거
			photos = photos.substring(0,photos.length()-1);
			System.out.println(photos);
			dto.setQimg(photos);
		}
	
		
			//db update
	      qnaMapper.insertQnA(dto);
	      return "redirect:list";
	   }
}
