package com.pythonchip.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MenuDAO;
import com.pythonchip.model.MenuDTO;

public class MenuService implements Command {



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[MenuService]");
		
		String menu_name = request .getParameter("menu_name");
		String price = request.getParameter("price");
		String store_name = request.getParameter("store_name");
		
		System.out.println(price);
		System.out.println(menu_name);
		System.out.println(store_name);


		// DTO로 묶기 
		MenuDTO dto = new MenuDTO(price, menu_name, store_name);
		
		int row = new MenuDAO().insertMenu(dto);
		if(row==1) {
			System.out.println("메뉴 등록 성공");
		}else {
			System.out.println("메뉴 등록 실패");
		}

		return null;
	}

}
