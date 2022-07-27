package com.pythonchip.model;

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
	
	public ArrayList<MenuDTO> getMenForTagSearchList() {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<MenuDTO> arr = (ArrayList)session.selectList("getMenForTagSearchList");
		session.close();
		return arr;
	}
	
	
}
