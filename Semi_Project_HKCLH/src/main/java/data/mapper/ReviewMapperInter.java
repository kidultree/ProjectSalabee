package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {

	
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
	
	public List<ReviewDto> getReviewList();
	public List<ReviewDto> getPnumReviewList();
	public List<Integer> getPnumList();
	public List<ReviewDto> getPnumReviewPartList(int pnum);
	public List<ReviewDto> getmIdReviewList(String mId);
	
	
	public ReviewDto getReview(int num);
	public int getTotalReviewCount();
	
}
