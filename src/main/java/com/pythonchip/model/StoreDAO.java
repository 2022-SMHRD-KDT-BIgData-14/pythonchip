package com.pythonchip.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;


public class StoreDAO {

	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();

	
	public ArrayList<StoreDTO> getStoreList() {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreList");
		session.close();
		return arr;
	}
	
	public StoreDTO getStoreOne(String store_seq) {
		
		SqlSession session = sqlSessionFactory.openSession();
		StoreDTO dto = session.selectOne("getStoreOne",store_seq);
		session.close();
		return dto;
	}
	
	public ArrayList<StoreDTO> getStoreSearchList(String query) {
		
		SqlSession session = sqlSessionFactory.openSession();
		query = "%"+query+"%";
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreSearchList",query);
		session.close();
		return arr;
	}
	
	
}
