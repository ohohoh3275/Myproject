package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		
		return sqlSession.selectList("replyMapper.readReply", bno);
	}

	@Override
	public void writeReply(ReplyVO replyVo) throws Exception {
		sqlSession.insert("replyMapper.writeReply", replyVo);
	}

}
