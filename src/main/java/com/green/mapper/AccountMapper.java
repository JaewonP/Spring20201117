package com.green.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.AccountVO;

public interface AccountMapper {
	public List<AccountVO> acList(); 
	public void delete(String invoice); 
	public AccountVO get(Long free_id);
	public List<AccountVO> getOne(String free_name);
	public void insertBuy(AccountVO ac); 
}
