package com.green.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.AccountVO;
import com.green.domain.RegisterVO;

public interface RegisterService {
	public List<RegisterVO> regList(); //회원정보 전체 가져오기 
	public RegisterVO getOneName(String free_name); //회원정보 한 명의 id값 가져오기
	public void inputPerson(RegisterVO reg); //회원 정보 넣기
	public RegisterVO get(Long free_id); //회원 한 명의 정보 가져오기
	
	public List<AccountVO> acList();
	public List<AccountVO> getOne(String free_name);
	public void insertBuy(AccountVO ac); //상품 구매 정보 생성 
	public void delete(String invoice);

}