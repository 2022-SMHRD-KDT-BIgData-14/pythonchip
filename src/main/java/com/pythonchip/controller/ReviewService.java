package com.pythonchip.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.BoardDAO;
import com.pythonchip.model.BoardDTO;
import com.pythonchip.model.ReviewDAO;
import com.pythonchip.model.ReviewDTO;

public class ReviewService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[ReviewService]");
		
		String rev_content = request .getParameter("rev_content");
		String grade = request.getParameter("grade");

		
		System.out.println("rev_content : "+ rev_content);
		System.out.println("grade : "+ grade);




		// DTO로 묶기 
		ReviewDTO dto = new ReviewDTO(null, null, grade, null, rev_content, null);
		
		// insertBoard 메소드 호출
		int row = new ReviewDAO().insertReview(dto);
		
		if(row==1) {
			System.out.println("리뷰 등록 성공");
		}else {
			System.out.println("리뷰 등록 실패");
		}
		
		return "./ReviewWrite.jsp";
	}
		
		
}
