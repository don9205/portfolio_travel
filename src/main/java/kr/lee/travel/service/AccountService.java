package kr.lee.travel.service;

import kr.lee.travel.vo.AccountVo;

public interface AccountService {

	public AccountVo signin(AccountVo loginInfo);

	public boolean signUp(AccountVo userInfo);

	public boolean isDuplicated(String id);


}
