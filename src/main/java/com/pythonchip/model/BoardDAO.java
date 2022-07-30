package com.pythonchip.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.pythonchip.db.SqlSessionManager;

public class BoardDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 게시글 작성
	public int insertBoard(BoardDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertBoard",dto);
		session.close();
		
		return row;
	}
	// 전체 게시물 조회
	public ArrayList<BoardDTO> showBoard() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<BoardDTO> board_list = (ArrayList)session.selectList("showBoard");
		session.close();
		
		return board_list;
		}
	
	// 세부 게시글 조회
	public BoardDTO detailBoard(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		BoardDTO board = session.selectOne("detailBoard",num);
		session.close();
		
		return board;
	}
}
