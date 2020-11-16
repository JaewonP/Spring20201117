package com.green.domain;

import lombok.Data;

@Data
public class AccountVO {
	private Long free_id;
	private String free_name;
	private String free_password;
	private String main_address;
	private String detail_address;
	private String cellphone;
	private String invoice;
	private String goods;
	private Float price;
	private Long quantity;
	private Float total_price;
	private Float coupon;
	private String coupon_use;
}
