package com.crud.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.User;
import com.crud.service.UserService;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;
import com.crud.bean.Msg;


/**
 * 处理用户信息CRUD请求 
 * @2020-7-13 gjh
 * @author copywang
 *
 */
@Controller
public class UserController {

	@Autowired
	UserService userService;

	/***
	 * 查找用户及其密码
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkuser(@RequestParam("userName") String username,@RequestParam("passWord") String password,
			HttpServletRequest request,HttpServletResponse response) {
		//获取当前连接的session
		HttpSession session = request.getSession();
		//判断用户是否存在
		int inter_user=1;
		
		if(userService.finduser(username) == 1){
			if (userService.finduser(username,password)==1) {
				inter_user=1;
			} 
			else if (userService.finduser(username,password)==2) {
				inter_user=0;
			}
			else {
				//返回密码错误
				return Msg.pwdfail();
			}
		} else {
			//返回用户名不存在
			return Msg.fail();
		}
		User userinfo=		userService.getInformation(username);
		
		session.setAttribute("user_uid", userinfo.getUid());
		session.setAttribute("user_pwd", userinfo.getPwd());
		session.setAttribute("user_name", userinfo.getName());
		session.setAttribute("user_tel", userinfo.getTel());
		session.setAttribute("user_dept", userinfo.getDept());
		session.setAttribute("user_addr", userinfo.getAddr());
		session.setAttribute("user_authzarc", userinfo.getAuthzarc());
		session.setAttribute("user_authzbas", userinfo.getAuthzbas());
		session.setAttribute("user_authzexp", userinfo.getAuthzexp());
		session.setAttribute("user_authzfed", userinfo.getAuthzfed());
		session.setAttribute("user_authzbre", userinfo.getAuthzbre());
		session.setAttribute("user_authzhea", userinfo.getAuthzhea());
		session.setAttribute("user_authzauthzmanage", userinfo.getAuthzauthzmanage());
		session.setAttribute("user_authzadvertsmanage", userinfo.getAuthzadvertsmanage());
		session.setAttribute("user_buyarc", userinfo.getBuyarc());
		session.setAttribute("user_belarc", userinfo.getBelarc());

		//返回结果
		if(inter_user==1){
			//返回内部用户登录成功
			return Msg.intersuccess();
		}
		else{
			//返回外部用户登录成功
			return Msg.outersuccess();
		}
		
	}
	
	/*
	 * 用户登出按钮
	 * */
	@RequestMapping(value = "/userlogout", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkoutuser(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("user_uid", "访客");
		session.setAttribute("user_pwd", "");
		session.setAttribute("user_name", "");
		session.setAttribute("user_tel", "");
		session.setAttribute("user_dept", "");
		session.setAttribute("user_addr", "");
		session.setAttribute("user_authzarc", "");
		session.setAttribute("user_authzbas", "");
		session.setAttribute("user_authzexp", "");
		session.setAttribute("user_authzfed", "");
		session.setAttribute("user_authzbre", "");
		session.setAttribute("user_authzhea", "");
		session.setAttribute("user_authzauthzmanage", "");
		session.setAttribute("user_authzadvertsmanage", "");
		session.setAttribute("user_buyarc", "");
		session.setAttribute("user_belarc", "");
		return Msg.success();
	}
	
	@RequestMapping("/userlogin/interUser")
	public String toInterMainPage() {
		return "add/AddExperimentRecord";
	}
	@RequestMapping("/userlogin/outerUser")
	public String toOutterMainPage() {
		return "advert/recommend";   	// syx 改了跳转的目的jsp
	}
}
