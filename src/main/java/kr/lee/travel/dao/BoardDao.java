package kr.lee.travel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.lee.travel.pagenation.Criteria;
import kr.lee.travel.vo.AccountVo;
import kr.lee.travel.vo.BoardVo;

public interface BoardDao {

	void setBoard(@Param("board")BoardVo registerBoard);

	List<BoardVo> getBoards();

	int getCountUserLists(@Param("cri")Criteria cri);

	List<BoardVo> getUserLists(@Param("cri")Criteria cri); //페이징처리시 필요

	BoardVo getBoard(@Param("num")Integer num);

	void updateBoard(@Param("board")BoardVo board);


}
