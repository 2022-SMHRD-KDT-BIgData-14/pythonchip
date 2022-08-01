package com.pythonchip.FrontController;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pythonchip.command.Command;
import com.pythonchip.controller.BoardService;
import com.pythonchip.controller.DeleteService;
import com.pythonchip.controller.JoinService;
import com.pythonchip.controller.LoginService;
import com.pythonchip.controller.LogoutService;
import com.pythonchip.controller.MenuService;
import com.pythonchip.controller.ReviewService;
import com.pythonchip.controller.StoreService;
import com.pythonchip.controller.updateService;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[FrontController]");
		request.setCharacterEncoding("UTF-8");
		// 어디서 요청이 들어왔는지 확인
		String requstURI = request.getRequestURI();
		System.out.println("요청 들어온 주소: " + requstURI);
		// 프로젝트 이름 확인(ContextPath)
		String contextPath = request.getContextPath();
		System.out.println("프록젝트 이름: " + contextPath);
		String result = requstURI.substring(contextPath.length() + 1);
		System.out.println("요청 서블릿: " + result);
		String moveURL = null;
		Command service = null;
		if (result.equals("LoginService.do")) {
			service = new LoginService();
		} else if (result.equals("LogoutService.do")) {
			service = new LogoutService();
		} else if (result.equals("updateService.do")) {
			service = new updateService();
		} else if (result.equals("DeleteService.do")) {
			service = new DeleteService();
		} else if (result.equals("StoreService.do")) {
			service = new StoreService();
		} else if (result.equals("BoardService.do")) {
			service = new BoardService();
		} else if (result.equals("ReviewService.do")) {
			service = new ReviewService();
		} else if (result.equals("MenuService.do")) {
			service = new MenuService();
		}else if (result.equals("JoinService.do")) {
			service = new JoinService();
		}else if (result.equals("LogoutService.do")) {
			service = new LogoutService();
		}

		moveURL = service.execute(request, response);
		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);
	}
}
