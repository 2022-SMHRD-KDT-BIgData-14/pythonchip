package com.pythonchip.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pythonchip.command.Command;
import com.pythonchip.model.MemberDAO;
import com.pythonchip.model.MemberDTO;


public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[JoinService]");
		
		// 2. 데이터 받아오기
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
		
		
		
		// 3. DTO로 묶기
		MemberDTO dto = new MemberDTO(id,pw,gender,age, user_tel);
				
		// 4. join메소드 호출
		int row = new MemberDAO().join(dto);
		
		// 5. 실행 결과 확인하기
		String moveURL = null;
		if(row == 1) {
			System.out.println("회원가입 성공");
			// JoinSuccess.jsp
			// 회원가입한 email 전송
			request.setAttribute("id", id);
			moveURL = "./JoinSuccess.jsp";
		}else {
			System.out.println("회원가입 실패");
			// Main.jsp
			moveURL = "./Main.jsp";
		}
		
		return moveURL;
	}

}
