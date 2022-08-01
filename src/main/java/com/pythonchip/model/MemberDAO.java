package com.pythonchip.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pythonchip.db.SqlSessionManager;
import com.pythonchip.model.MemberDTO;

public class MemberDAO {

	private SqlSessionFactory sqlsessionFactory
	=SqlSessionManager.getSqlSession();

// 회원가입
public int join(MemberDTO dto) {
	 
	SqlSession session = sqlsessionFactory.openSession(true);
	int row =session.insert("join",dto);
	session.close();
	
	return row;
}

// 로그인
public MemberDTO login(MemberDTO dto) {
	SqlSession session =  sqlsessionFactory.openSession(true);
	MemberDTO info =  session.selectOne("login",dto);
	session.close();
	
	return info;
		
}

public int update(MemberDTO dto) {
	SqlSession session = sqlsessionFactory.openSession(true);
	int row = session.update("update",dto);
	session.close();
	
	return row;
}

public int delete(MemberDTO dto) {
	SqlSession session = sqlsessionFactory.openSession(true);
	int row = session.delete("delete",dto);
	session.close();
	return row;
	
	
}

// 회원정보조회
	public ArrayList<MemberDTO> showMember() {
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<MemberDTO> mem_list = (ArrayList) session.selectList("showMember");
		session.close();

		return mem_list;
	}


}
