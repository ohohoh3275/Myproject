package kr.co.dao;

import java.util.List;

import kr.co.vo.ImageVO;

public interface GalleryDAO {
	
	public void insert(ImageVO vo) throws Exception;

	public List<ImageVO> select() throws Exception;
	
} 
