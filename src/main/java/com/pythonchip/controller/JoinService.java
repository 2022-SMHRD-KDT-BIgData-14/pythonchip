package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
		System.out.println("Joinservice");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String user_tel = request.getParameter("user_tel");
		
		System.out.println("id:"+id);
		System.out.println("pw:"+pw);
		System.out.println("gender:"+gender);
		System.out.println("age:"+age);
		System.out.println("user_tel:"+user_tel);
		
		
		MemberDTO dto = new MemberDTO(id,pw,gender,age,user_tel);
		int row = new MemberDAO().join(dto);
		
		
		String moveURL = null;
		if(row == 1) {
			System.out.println("회원가입 성공");
			request.setAttribute("id", id);
			return "./Login.jsp";
		}else {
			return "./Join.jsp";			
		}
		}catch(Exception e){
			return "./Join.jsp";			
		}
		
		
	}

}
