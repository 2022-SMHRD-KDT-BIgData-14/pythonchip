package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class LoginService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
	System.out.println("loginservice");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println("id"+id);
	System.out.println("pw"+pw);
	
	MemberDTO dto = new MemberDTO(id,pw);
	
	MemberDTO info = new MemberDAO().login(dto);
	
	System.out.println(info);
	
	if(info != null) {
		HttpSession session = request.getSession();
		session.setAttribute("info", info);
		return "./Main.jsp";
	}else {
		System.out.println("로그인 실패");
	}
	
	
	}

}
