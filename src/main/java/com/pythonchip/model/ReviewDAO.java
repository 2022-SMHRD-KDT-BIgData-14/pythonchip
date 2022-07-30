package com.pythonchip.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;

public class ReviewDAO {

	
	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();
	
	// 리뷰 작성
	public int insertReview(ReviewDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertReview",dto);
		session.close();
		
		return row;
	}
	
	// 리뷰 조회
	public ArrayList<ReviewDTO> showReview() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReviewDTO> review_list = (ArrayList)session.selectList("showReview");
		session.close();
		
		return review_list;
		}

}
