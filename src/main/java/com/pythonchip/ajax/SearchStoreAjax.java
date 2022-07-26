package com.pythonchip.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.pythonchip.model.StoreDAO;
import com.pythonchip.model.StoreDTO;

/**
 * Servlet implementation class SearchStoreAjax
 */
public class SearchStoreAjax extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("SearchStore_Ajax");

		response.setContentType("application/x-json; charset=UTF-8");
		String keyword = request.getParameter("keyword");
		System.out.println(keyword);
		ArrayList<StoreDTO> arr =  new StoreDAO().getStoreSearchList(keyword);
		//cors 정책 허용 추후 수정 필요
	    response.setHeader("Access-Control-Allow-Headers", "Content-Type");
	    response.setHeader("Access-Control-Allow-Origin", "*");
	    System.out.println(keyword);
	    JSONArray ja = new JSONArray(arr);
	    response.setCharacterEncoding("UTF-8");

		response.setContentType("text/json");
		PrintWriter pw = response.getWriter();
		
		pw.println(ja.toString());
		
		
	}

}
