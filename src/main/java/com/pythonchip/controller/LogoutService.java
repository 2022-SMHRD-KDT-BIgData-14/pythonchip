package com.pythonchip.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;


public class LogoutService implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[LogoutService]");
		
		// 로그아웃 = 로그인한 유저의 정보를 유지 X
		// -> 로그인정보가 들어있는 session을 삭제
		HttpSession session = request.getSession();
		
		session.removeAttribute("info");
		//session.invalidate();
		
		
		return "./Main.jsp";
		
		
		
	}
	
}
