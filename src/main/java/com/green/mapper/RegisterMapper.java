package com.green.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.RegisterVO;

public interface RegisterMapper {
	public List<RegisterVO> regList(); //회원정보 전체 가져오기 
	public RegisterVO getOneName(String free_name); //회원정보 한 명 가져오기
	public void inputPerson(RegisterVO reg); //회원 정보 넣기 
	public RegisterVO get(Long free_id);
	
}