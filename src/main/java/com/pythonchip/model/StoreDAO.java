package com.pythonchip.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;


public class StoreDAO {

	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();

	
	public ArrayList<StoreDTO> getStoreList() {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreList");
		session.close();
		return arr;
	}
	
	
	
}
