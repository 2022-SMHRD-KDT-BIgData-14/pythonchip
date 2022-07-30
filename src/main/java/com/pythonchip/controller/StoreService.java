package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.pythonchip.command.Command;
import com.pythonchip.model.StoreDAO;
import com.pythonchip.model.StoreDTO;

public class StoreService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[StoreService]");

		String store_name = request.getParameter("store_name");
		String location_gu = request.getParameter("location_gu");
		String location_dong = request.getParameter("location_dong");
		String main_menu = request.getParameter("main_menu");
		String store_tel = request.getParameter("store_tel");
		String keyword = request.getParameter("keyword");
		
		System.out.println("store_name : " + store_name);
		System.out.println("location_gu : " + location_gu);
		System.out.println("location_gu : " + location_gu);
		System.out.println("main_menu : " + main_menu);
		System.out.println("store_tel : " + store_tel);
		System.out.println("keyword  : " + keyword );

		 
		// DTO로 묶기 
		StoreDTO dto = new StoreDTO(null, store_name, location_gu, location_dong, null, main_menu, store_tel, null, null, store_tel, keyword);
		
		// insertBoard 메소드 호출
		int row = new StoreDAO().insertStore(dto);
		
		
		String moveURL = null;
		if(row==1) {
			System.out.println("가게등록 성공");
			moveURL = "./StoreSuccess.jsp";
			}else {
			System.out.println("가게등록 실패");
			// Main.jsp
			moveURL = "./Main.jsp";
		}
		return moveURL;
	}

}
