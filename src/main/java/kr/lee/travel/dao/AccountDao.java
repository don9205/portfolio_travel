package kr.lee.travel.dao;

import org.apache.ibatis.annotations.Param;

import kr.lee.travel.vo.AccountVo;

public interface AccountDao {

	AccountVo getAccount(@Param("id")String id);

	void setAccount(@Param("user")AccountVo userInfo);

}
