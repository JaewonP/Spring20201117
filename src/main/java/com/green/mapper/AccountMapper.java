package com.green.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.AccountVO;

public interface AccountMapper {
	public List<AccountVO> acList(); //회원정보 전체 가져오기 
	public void delete(String invoice); //구매 없애기
	public AccountVO get(Long free_id);
	public List<AccountVO> getOne(String free_name);
	public void insertBuy(AccountVO ac); //상품 구매 정보 생성 
}