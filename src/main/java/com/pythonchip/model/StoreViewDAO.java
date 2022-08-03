package com.pythonchip.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;

public class StoreViewDAO {

	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();
	
	public StoreViewDTO getViewStore(BigDecimal id) {
		
		SqlSession session = sqlSessionFactory.openSession();
		StoreViewDTO dto = (StoreViewDTO)session.selectOne("getStoreView",id);
		session.close();
		return dto;
	}
	
	public int insertStoreView(BigDecimal id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertStoreView", id);
		session.close();
		return row;
	}
	
	
	public int updateStoreView(UpdateStoreViewDO viewDO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("updateStoreView", viewDO);
		session.close();
		return row;
	}
}
