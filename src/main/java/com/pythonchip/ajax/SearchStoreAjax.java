package com.pythonchip.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.pythonchip.model.MenuDAO;
import com.pythonchip.model.StoreDAO;
import com.pythonchip.model.StoreDTO;

/**
 * Servlet implementation class SearchStoreAjax
 */
public class SearchStoreAjax extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("SearchStore_Ajax");
		// cors 정책 허용 추후 수정 필요
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		response.setHeader("Access-Control-Allow-Origin", "*");

		response.setContentType("application/x-json; charset=UTF-8");
		String keyword = request.getParameter("keyword");

		String[] jobList = { "name", "location", "menu","keyword"};
		String job = request.getParameter("job");

		System.out.println(job);

		ArrayList<StoreDTO> arr = null;
		if (job != null) {
			if (job.equals(jobList[0])) {
				// 가게 이름 검색
				arr = new StoreDAO().getStoreNameSearchList(keyword);
			} else if (job.equals(jobList[1])) {
				// 가게 위치 검색
				arr = new StoreDAO().getStoreLocationSearchList(keyword);
			} else if (job.equals(jobList[2])) {
				// 메뉴 검색
				arr = new StoreDAO().getStoreForMenuSearchList(keyword);
			}else if (job.equals(jobList[3])) {
				//키워드 버튼 검색
				arr = new StoreDAO().getStoreForKeywordSearchList(keyword);
			}
			
		} else {
		System.out.println("else");
			arr = new StoreDAO().getStoreNameSearchList(keyword);
		}

		System.out.println(keyword);
		JSONArray ja = new JSONArray(arr);
		response.setCharacterEncoding("UTF-8");

		response.setContentType("text/json");
		PrintWriter pw = response.getWriter();

		pw.println(ja.toString());

	}

}
