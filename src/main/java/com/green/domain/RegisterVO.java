package com.green.domain;

import lombok.Data;

@Data
public class RegisterVO {
	
	private Long free_id;
	private String free_name;
	private String free_password;
	private String main_address;
	private String detail_address;
	private String juminNo;
	private String homeNum;
	private String cellphone;

}