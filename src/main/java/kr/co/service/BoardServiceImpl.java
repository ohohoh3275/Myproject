package kr.co.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDao;
	
	@Override
	public void write(BoardVO boardVO) throws Exception {
		boardDao.write(boardVO);
	}

//	@Override
//	public List<BoardVO> list(PageCriteria cri) throws Exception {
//	
//		return boardDao.list(cri);
//	}
//	
//	@Override
//	public int listCount() throws Exception {
//		return boardDao.listCount();
//	}

	@Override
	public BoardVO read(int bno) throws Exception {
		
		return boardDao.read(bno);
	}

	@Override
	public void update(BoardVO boardVO) throws Exception {
		
		boardDao.update(boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		
		boardDao.delete(bno);
	}

	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
	
		return boardDao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listCount(scri);
	}

	

}
