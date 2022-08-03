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
	
	public StoreDTO getStore(String store_name) {
		
		SqlSession session = sqlSessionFactory.openSession();
		StoreDTO dto = session.selectOne("getStore",store_name);
		session.close();
		return dto;
	}
	
	public ArrayList<StoreDTO> getStoreNameSearchList(String query) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreNameSearchList",query);
		session.close();
		return arr;
	}
	
	
	public ArrayList<StoreDTO> getStoreLocationSearchList(String query) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreLocationSearchList",query);
		session.close();
		return arr;
	}
	
	
	public ArrayList<StoreDTO> getStoreForMenuSearchList(String query) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreForMenuSearchList",query);
		session.close();
		return arr;
	}
	
	public ArrayList<StoreDTO> getStoreForKeywordSearchList(String query) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArrayList<StoreDTO> arr = (ArrayList)session.selectList("getStoreForKeywordSearchList",query);
		session.close();
		return arr;
	}
	
	// 가게 등록
	public int insertStore(StoreDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertStore",dto);
		session.close();
		
		return row;
	}
	
	
}
