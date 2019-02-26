package kr.lee.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.lee.travel.dao.AccountDao;
import kr.lee.travel.dao.BoardDao;
import kr.lee.travel.pagenation.Criteria;
import kr.lee.travel.pagenation.PageMaker;
import kr.lee.travel.vo.AccountVo;
import kr.lee.travel.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDao boardDao;
	


	@Override
	public boolean registerB(BoardVo registerBoard) {
		// TODO Auto-generated method stub
			
			boardDao.setBoard(registerBoard);
			
		return true;
	}

	@Override
	public List<BoardVo> getBoards() {
		// TODO Auto-generated method stub
		return boardDao.getBoards();
	}

  // 페이징처리 메소드
  @Override
  public PageMaker getPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = boardDao.getCountUserLists(cri);
    
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);
    
    return pageMaker;
    
  }
  
  @Override  //페이징처리시 필요
  public List<BoardVo> getUsers(Criteria cri) {
    return boardDao.getUserLists(cri);
  }

	@Override
	public BoardVo detailBoard(Integer num) {
		// TODO Auto-generated method stub
		if(num == null )
			return null;
		return boardDao.getBoard(num);
	}

	@Override
	public boolean updateBoard(BoardVo board, AccountVo user) {
		BoardVo oriBoard = boardDao.getBoard(board.getNum());
			if(oriBoard == null || !oriBoard.getId().equals(user.getId())) 
				return false;
			board.setRegistered_date(oriBoard.getRegistered_date());
			board.setState(oriBoard.getState());
			boardDao.updateBoard(board);
		return true;
	}

	@Override
	public void deleteBoard(Integer num, AccountVo user) {
		// TODO Auto-generated method stub
		BoardVo board = boardDao.getBoard(num);
		/*
		 *1. 해당 id를 가진 게시글이 없거나 이미 삭제된 경우이면 바로 종료 
		 *2. 로그인한 유저가 게시판 작성자가 아닌 경우에는 게시판 삭제 동작이 실행되지 않고 게시판 리스트 페이지로 넘어간다
		 */
		if(board == null || !board.getId().equals(user.getId()))return;
		board.setState("N");
		// boardDao에 updateBoard를 만들어 놓으면 게시판을 삭제할 때와 수정할 때
		// 모두 쓰일 수 있기 때문에 deleteBoard가 아닌 updateBoard로 함
		boardDao.updateBoard(board);
		
	}

	
}
