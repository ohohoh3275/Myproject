package kr.co.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.ImageVO;


@Repository
public class GalleryDAOImpl implements GalleryDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insert(ImageVO vo) throws Exception {
		
		sqlSession.insert("galleryMapper.insert", vo);
		
	}


	@Override
	public List<ImageVO> select() throws Exception {
		
		return sqlSession.selectList("galleryMapper.select");
		
	}	
	
	
	

}
