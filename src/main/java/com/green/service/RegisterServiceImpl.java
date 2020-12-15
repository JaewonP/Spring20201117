package com.green.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.domain.AccountVO;
import com.green.domain.RegisterVO;
import com.green.mapper.AccountMapper;
import com.green.mapper.RegisterMapper;

import lombok.Setter;

@Service
public class RegisterServiceImpl implements RegisterService{

	@Setter(onMethod_=@Autowired) 
	private RegisterMapper mapper;
	
	@Setter(onMethod_=@Autowired) 
	private AccountMapper amapper;
	
	@Override
	public List<RegisterVO> regList() {
		// TODO Auto-generated method stub
		return mapper.regList();
	}

	@Override
	public List<AccountVO> getOne(String free_name) {
		// TODO Auto-generated method stub
		return amapper.getOne(free_name);
	}

	@Override
	public void inputPerson(RegisterVO reg) {
		// TODO Auto-generated method stub
		
		
			mapper.inputPerson(reg);
	
	}

	public RegisterVO get(Long free_id) {
		// TODO Auto-generated method stub
		return mapper.get(free_id);
	}

	@Override
	public void insertBuy(AccountVO ac) {
		// TODO Auto-generated method stub
		amapper.insertBuy(ac);
		
	}

	@Override
	public void delete(String invoice) {
		// TODO Auto-generated method stub
		amapper.delete(invoice);
	}

	@Override
	public RegisterVO getOneName(String free_name) {
		// TODO Auto-generated method stub
		return mapper.getOneName(free_name);
	}

	@Override
	public List<AccountVO> acList() {
		// TODO Auto-generated method stub
		return amapper.acList();
	}
	

}