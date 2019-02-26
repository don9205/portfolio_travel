package kr.lee.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.lee.travel.dao.AccountDao;
import kr.lee.travel.vo.AccountVo;

@Service
public class AccountServiceImp implements AccountService {
	
	@Autowired
	AccountDao accountDao;

	@Override
	public AccountVo signin(AccountVo loginInfo) {
		// TODO Auto-generated method stub
		
		AccountVo user = accountDao.getAccount(loginInfo.getId());
		if(user != null && loginInfo.getPw().equals(user.getPw())) {
			return user;
		} else {
			
			System.out.println("일치하지 않습니다");
			return null;
		}

	}

	@Override
	public boolean signUp(AccountVo userInfo) {
		// TODO Auto-generated method stub
		if(accountDao.getAccount(userInfo.getId()) != null)
		return false;
		accountDao.setAccount(userInfo);
		return true;
	}

	@Override
	public boolean isDuplicated(String id) {
		if(accountDao.getAccount(id) != null)
			return true;
		return false;
	}
	
}
