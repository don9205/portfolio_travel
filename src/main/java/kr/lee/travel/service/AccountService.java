package kr.lee.travel.service;

import kr.lee.travel.vo.AccountVo;

public interface AccountService {

	AccountVo signin(AccountVo loginInfo);

	boolean signUp(AccountVo userInfo);


}
