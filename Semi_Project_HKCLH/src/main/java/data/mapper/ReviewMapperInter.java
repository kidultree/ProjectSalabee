package data.mapper;

import java.util.List;

import data.dto.NoticeDto;
import data.dto.ReviewDto;

public interface ReviewMapperInter {

	
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
	
	public List<ReviewDto> getReviewList();
	public List<ReviewDto> getPnumReviewList();
	
	public ReviewDto getReview(int num);
	public int getTotalReviewCount();
	
}
