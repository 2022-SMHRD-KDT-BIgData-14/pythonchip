package com.pythonchip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;

public class LoginService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("loginservice");

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			System.out.println(id);
			System.out.println(pw);

			MemberDTO dto = new MemberDTO(id, pw);

			MemberDTO info = new MemberDAO().login(dto);

			System.out.println(info);

			if (info != null) {
				HttpSession session = request.getSession();
				session.setAttribute("info", info);
				return "./Home.jsp";
			}else {
				return "./Login.jsp";
			}
		} catch (Exception e) {
			return "./Login.jsp";
		}
	}

}
