package kr.co.dao;

import kr.co.vo.MemberVO;


public interface MemberDAO {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
	
}
