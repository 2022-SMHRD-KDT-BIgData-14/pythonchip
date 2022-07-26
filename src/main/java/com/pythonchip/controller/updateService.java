package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class updateService implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
		System.out.println("updateService");
		
		String id = request.getParameter("id");
		String rpw = request.getParameter("rpw");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String user_tel = request.getParameter("user_tel");
		
		System.out.println(id);
		System.out.println(rpw);
		System.out.println(gender);
		System.out.println(age);
		System.out.println(user_tel);
		
		MemberDTO dto = new MemberDTO(id,rpw,gender,age,user_tel); 
		int row = new MemberDAO().update(dto);
		
		if(row == 1) {
			System.out.println("회원정보 수정 완료");
			HttpSession session = request.getSession();
			session.setAttribute("info", dto);
			return "./Home.jsp";
		} else {
			System.out.println("회원정보수정 실패");
			return "./MemberUpdate.jsp";
		}}catch(Exception e) {
			return "./MemberUpdate.jsp";
		}
	}
}
