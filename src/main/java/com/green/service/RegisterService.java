package com.green.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.AccountVO;
import com.green.domain.RegisterVO;

public interface RegisterService {
	public List<RegisterVO> regList(); 
	public RegisterVO getOneName(String free_name);
	public void inputPerson(RegisterVO reg); 
	public RegisterVO get(Long free_id); 
	
	public List<AccountVO> acList();
	public List<AccountVO> getOne(String free_name);
	public void insertBuy(AccountVO ac); 
	public void delete(String invoice);

}