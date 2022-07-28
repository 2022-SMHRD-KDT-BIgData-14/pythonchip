package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;


public class DeleteMemberService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[DeleteMemberService]");

		// 데이터 받아오기
		String id = request.getParameter("id");

		// deleteMember 메소드 호출
		int row = new MemberDAO().deleteMember(id);

		if (row == 1) {
			System.out.println("회원정보삭제 성공");
		} else {
			System.out.println("회원정보삭제 실패");
		}
		return "./Main.jsp";
	}
}
