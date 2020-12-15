package com.green.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.AccountVO;
import com.green.domain.RegisterVO;
import com.green.service.RegisterService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@AllArgsConstructor
public class LoginController {
	
	@Setter(onMethod_=@Autowired)
	private RegisterService service;
	
	@RequestMapping("login/list")
	public String list(Model model) {
		
		//model.addAttribute("list", service.regList());
		model.addAttribute("list", service.regList());
		return "login/id_list";
	}
	
	@RequestMapping("login/buylist")
	public String buyList(Model model) {
		
		//model.addAttribute("list", service.regList());
		model.addAttribute("list", service.acList());
		return "login/buylist";
	}
	
	
	@RequestMapping("login/register")
	public String register(Model model) {
		
		return "login/register";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(RegisterVO reg, Model model, String name) {	
		//reg.setFree_id(service.getOne(reg.getFree_name(), reg.getFree_password()).getFree_id());
		//model.addAttribute("login", service.getOne(reg.getFree_name(), reg.getFree_password()));
		System.out.println(reg.getFree_name());
		
		if(service.getOneName(reg.getFree_name()) != null) {
			Long i = service.getOneName(reg.getFree_name()).getFree_id();
			return "redirect:/login/getOne?free_id=" + i;
			
		}
		else {
			
			return "redirect:/login";
		}
		
	}

	@PostMapping("login/register")
	public String register(RegisterVO reg, Model model) {
		
		System.out.println(reg.getFree_name());	
		String a = reg.getFree_name();
		System.out.println(a);
		
		for(RegisterVO temp : service.regList()) {
			if(temp.getFree_name() == null) {
				
				continue;
			}
			else {
			if(temp.getFree_name().equals(a)) {
				System.out.println("되는지");
				model.addAttribute("idMul", "아이디가 중복되었습니다.");
				//return "redirect:/login/register";
				
				return "login/register";
			}
			}
		}
		
		service.inputPerson(reg);
		return "redirect:/login";	

		
	}
	
	@GetMapping("login/getOne")
	public String loginOne(Model model, RegisterVO reg, Long free_id, AccountVO account) {
		System.out.println(reg.getFree_id());
		//model.addAttribute("login", service.getOne(reg.getFree_name()));
		model.addAttribute("login", service.get(reg.getFree_id()));
		model.addAttribute("account", service.getOne(service.get(reg.getFree_id()).getFree_name()));
		return "login/getOne";
	}
	
//	@GetMapping("account/buy")
//	public String buy() {
//		
//		return "account/buy";
//	}
	
	@RequestMapping("login/buy")
	public String buy(Model model, RegisterVO reg) {
		System.out.println(reg.getFree_id());
		model.addAttribute("login", service.get(reg.getFree_id()));
		return "login/buy";
	}
	
	@PostMapping("login/buy")
	public String buy(AccountVO ac) {
		service.insertBuy(ac);
		return "redirect:list";
	}
	
	@RequestMapping("login/return")
	public String returnGoods(Model model, AccountVO ac) {
		
		return "login/return";
	}
	
	@PostMapping("login/return")
	public String returnGoods(AccountVO ac, String invoice) {
		service.delete(invoice);
		return "redirect:list";
	}
	
	@RequestMapping("login/test")
	public String returnTest(Model model, AccountVO ac) {
		
		return "login/test";
	}
	
	@RequestMapping("login/test2")
	public String returnTest2(Model model, AccountVO ac) {
		
		return "login/test2";
	}

}