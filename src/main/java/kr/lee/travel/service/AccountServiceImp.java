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
		if(loginInfo.getPw() == user.getPw()) {
			return user;
		}
		
		return null;
	}

	@Override
	public boolean signUp(AccountVo userInfo) {
		// TODO Auto-generated method stub
		if(accountDao.getAccount(userInfo.getId()) != null)
		return false;
		accountDao.setAccount(userInfo);
		return true;
	}
	
}
