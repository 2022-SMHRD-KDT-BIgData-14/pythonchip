package com.pythonchip.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {


		// static 블록 : 객체를 호출할 때 무조건 한번 실행되는 부분
		// Ctrl+shift+O : 전체 import

		static SqlSessionFactory sqlSessionFactory;
		static {
			try {
				String resource = "com/pythonchip/db/config.xml";
				InputStream inputStream = Resources.getResourceAsStream(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		public static SqlSessionFactory getSqlSession() {
			return sqlSessionFactory;
		}


	}


