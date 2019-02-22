package kr.lee.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.lee.travel.dao.AccountDao;
import kr.lee.travel.dao.BoardDao;
import kr.lee.travel.vo.AccountVo;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDao boardDao;



	
}
