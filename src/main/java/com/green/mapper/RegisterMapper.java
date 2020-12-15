package com.green.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.RegisterVO;

public interface RegisterMapper {
	public List<RegisterVO> regList(); 
	public RegisterVO getOneName(String free_name); 
	public void inputPerson(RegisterVO reg); 
	public RegisterVO get(Long free_id);
	
}