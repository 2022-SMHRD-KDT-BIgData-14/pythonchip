package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;

public class LogoutService implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		session.removeAttribute("info");
		
		return "./Main.jsp";
		
	
	
	
	}
}
