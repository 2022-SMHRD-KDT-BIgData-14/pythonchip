package com.pythonchip.model;

import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;

public class ReviewDAO {

	
	private SqlSessionFactory sqlSessionFactory 
	= SqlSessionManager.getSqlSession();

	
}
