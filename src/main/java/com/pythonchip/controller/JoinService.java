package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String user_tel = request.getParameter("user_tel");
		
		MemberDTO dto = new MemberDTO(id,pw,gender,age,user_tel);
		int row = new MemberDAO().join(dto);
		
		String moveURL = null;
		if(row == 1) {
			System.out.println("회원가입 성공");
			request.setAttribute("id", id);
			moveURL = "./JoinSuccess.jsp";
		}else {
			System.out.println("회원가입 실패");
			moveURL = "./Main.jsp";
		}
		
		
		
		return moveURL;
		
		
		
	}

}
