package com.pythonchip.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;

public class MenuDAO {

	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();

	
	public ArrayList<MenuDTO> getMenuList() {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<MenuDTO> arr = (ArrayList)session.selectList("getStoreList");
		session.close();
		return arr;
	}
	
	
	public MenuDTO getMenuForStore() {
		SqlSession session = sqlSessionFactory.openSession();
		MenuDTO arr = session.selectOne("getMenuForStore");
		session.close();
		return arr;
		
	}	
	
	// 메뉴 등록
	public int insertMenu(MenuDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertMenu", dto);
		session.close();

		return row;
	}

	// 전체 메뉴 조회
		public ArrayList<MenuDTO> showMenu(BigDecimal seq) {
			SqlSession session = sqlSessionFactory.openSession(true);
			ArrayList<MenuDTO> menu_list = (ArrayList)session.selectList("showMenu",seq);
			session.close();
			
			return menu_list;
			}
		
	
		
		

	
	
}
