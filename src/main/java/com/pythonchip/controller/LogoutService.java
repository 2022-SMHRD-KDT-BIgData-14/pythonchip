package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class LogoutService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("logoutservice");

		// 로그아웃 = 로그인한 유저의 정보를 유지X
		// 즉, 로그인 정보가 들어있는 session을 삭제하면 된다.
		HttpSession session = request.getSession();

		session.removeAttribute("info");
		// session.invalidate(); 세션 전체 종료, 즉 더이상 세션이라는 것을 쓸 일이 없을 때 사용한다.

		return "./Home.jsp";

	}

}
