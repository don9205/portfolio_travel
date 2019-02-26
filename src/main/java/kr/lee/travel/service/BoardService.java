
package kr.lee.travel.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.lee.travel.pagenation.Criteria;
import kr.lee.travel.pagenation.PageMaker;
import kr.lee.travel.vo.AccountVo;
import kr.lee.travel.vo.BoardVo;

public interface BoardService {

	boolean registerB(BoardVo registerBoard);

	List<BoardVo> getBoards();

	PageMaker getPageMaker(Criteria cri, int i); // 페이징 처리시 필요

	List<BoardVo> getUsers(Criteria cri); // 페이징 처리시 필요

	BoardVo detailBoard(Integer num);

	boolean updateBoard(BoardVo board, AccountVo user);

	void deleteBoard(Integer num, AccountVo user);







}
