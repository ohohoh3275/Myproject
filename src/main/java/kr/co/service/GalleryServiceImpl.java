package kr.co.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.GalleryDAO;
import kr.co.vo.ImageVO;

@Service
public class GalleryServiceImpl implements GalleryService {
	
	@Autowired
	public GalleryDAO dao;

	@Override
	public void insert(ImageVO vo) throws Exception {
	
		dao.insert(vo);
	}

	

	@Override
	public List<ImageVO> select() throws Exception {
		
		return dao.select();
	}
	
	

}
