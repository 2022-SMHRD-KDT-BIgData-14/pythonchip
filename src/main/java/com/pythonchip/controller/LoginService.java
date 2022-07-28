package com.pythonchip.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;


public class LoginService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[LoginService]");
		
		// 2. 데이터 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		// 3. DTO로 묶기
		MemberDTO dto = new MemberDTO(id,pw);
		
		// 4. login메소드 호출
		MemberDTO info = new MemberDAO().login(dto);
		
		// 5. 실행결과 확인
		if(info != null) {
			System.out.println("로그인 성공");
			
			// 로그인한 정보 유지 - session사용
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("로그인 실패");
		}
	
		return "./Main.jsp";
	}
}
