package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.ImageVO;

public interface GalleryService {
	
	public void insert(ImageVO vo) throws Exception;
	
	public List<ImageVO> select() throws Exception;
}
