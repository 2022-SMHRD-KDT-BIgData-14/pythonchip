package com.pythonchip.controller;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.pythonchip.command.Command;
import com.pythonchip.model.BoardDTO;
import com.pythonchip.model.BoardDAO;

public class BoardService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[BoardService]");
	
		try {
//			request.setCharacterEncoding("UTF-8");
			// 파일 업로드를위한 변수 설정
			// 1. request 객체		
			// 2. 파일을 저장할 경로
			String path = request.getServletContext().getRealPath("file");
//			System.out.println(path);
			
			// 3. 파일의 최대크기 지정
			int maxSize = 10*1024*1024;
			
			// 4. 인코딩 방식
			String encoding = "UTF-8";
			
			// 5. 중복제거
			DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
			
			// MultipartRequest에 변수 다 넣어주기
			MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
			
			// 데이터 받아오기
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer");
			// (파일을 불러올 때 한글은 인코딩)
			String filename = URLEncoder.encode(multi.getFilesystemName("filename"),"UTF-8") ;
			String content = multi.getParameter("content");
			
			System.out.println("title : " + title);
			System.out.println("writer : " + writer);
			System.out.println("content : " + content);
			System.out.println("filename : " + filename);
			
			// DTO로 묶기 
			BoardDTO dto = new BoardDTO(null, writer, title, content, null, filename);
			
			// insertBoard 메소드 호출
			int row = new BoardDAO().insertBoard(dto);
			
			if(row==1) {
				System.out.println("파일 업로드 성공");
			}else {
				System.out.println("파일 업로드 실패");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "./Community.jsp";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
//		String title = request .getParameter("title");
//		String writer = request.getParameter("writer");
//		String content = request.getParameter("content");
//		String filename = request.getParameter("filename");
//		
//		System.out.println("title : "+ title);
//		System.out.println("writer : "+ writer);
//		System.out.println("content : "+ content);
//		System.out.println("filename : "+ filename);
//
//
//
//		// DTO로 묶기 
//		BoardDTO dto = new BoardDTO(null, writer, title, content, null, filename);
//		
//		// insertBoard 메소드 호출
//		int row = new BoardDAO().insertBoard(dto);
//		
//		if(row==1) {
//			System.out.println("게시물 등록 성공");
//		}else {
//			System.out.println("게시물 등록 실패");
//		}
//		
//		return "./BoardMain.jsp";
	}

}
