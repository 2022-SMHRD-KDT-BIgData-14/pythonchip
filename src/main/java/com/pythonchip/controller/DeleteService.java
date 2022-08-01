package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class DeleteService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("DeleteService");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		System.out.println(id);
		System.out.println(pw);
		
		MemberDTO dto = new MemberDTO(id,pw); 
		int row = new MemberDAO().delete(dto);
		
		String moveURL = null;
		if(row == 1) {
			System.out.println("회원 탈퇴 완료");
			moveURL = "./Home.jsp";
		}else {
			System.out.println("회원 탈퇴 실패");
			moveURL = "./MemberDelete.jsp";
		}
		
		return moveURL;
	}	
}
