package com.kh.khblind.member.cert.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.khblind.member.cert.entity.CertDto;

@Repository
public class CertDaoImpl implements CertDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insert(CertDto certDto) {
		sqlSession.insert("cert.insert", certDto);
	}

	@Override
	public boolean check(CertDto certDto) {
		CertDto find = sqlSession.selectOne("cert.check", certDto);
		return find != null;
	}

	@Override
	public void deleteByEmail(String email) {
		sqlSession.delete("cert.deleteByEmail", email);
	}

	@Override
	public void clear() {
		sqlSession.delete("cert.deleteByTime");
	}

}