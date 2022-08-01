package com.pythonchip.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.BoardDAO;
import com.pythonchip.model.BoardDTO;
import com.pythonchip.model.ReviewDAO;
import com.pythonchip.model.ReviewDTO;

import oracle.sql.TIMESTAMP;

public class ReviewService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[ReviewService]");
		
		String store_seq = request.getParameter("store_seq");
		String id = request.getParameter("id");
		String grade = request.getParameter("grade");
		String rev_content = request .getParameter("rev_content");

		
		System.out.println(store_seq);
		System.out.println(id);
		System.out.println(grade);
		System.out.println(rev_content);


		// DTO로 묶기 
		ReviewDTO dto = new ReviewDTO(new BigDecimal("0"), new BigDecimal(store_seq), id, new TIMESTAMP(), rev_content, grade);
		
		// insertBoard 메소드 호출
		int row = new ReviewDAO().insertReview(dto);
		
		if(row==1) {
			System.out.println("리뷰 등록 성공");
		}else {
			System.out.println("리뷰 등록 실패");
		}
		
		return "./DetailStore.jsp";
	}
		
		
}
