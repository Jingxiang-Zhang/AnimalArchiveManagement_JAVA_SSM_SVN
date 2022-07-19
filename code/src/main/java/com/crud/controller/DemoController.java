package com.crud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.Base64;

@Controller
public class DemoController {
	
	//将来自“/interdemo”下的请求重定向到view视图下的内部系统模板中
	@RequestMapping("/interdemo")
	public String redirInterDemo(HttpServletRequest request,HttpServletResponse response) {
		//request.setAttribute("something", "22");
		HttpSession session = request.getSession();
		//session.setAttribute("user_id", "hava a shot");
		/*
		//base64解密方法
		String uid=request.getParameter("uid");
		String pwd=request.getParameter("pwd");
		
		byte[] decoded = Base64.getDecoder().decode(uid);
		uid = new String(decoded);
		decoded = Base64.getDecoder().decode(pwd);
		pwd = new String(decoded);
		//System.out.println(uid+"   " +  pwd);
		//base加密方法
		//String encoded = Base64.getEncoder().encodeToString(bytes);
        //System.out.println("Base 64 加密后：" + encoded);
		request.setAttribute("uid", uid);*/
		return "内部系统模板";
	}
	
	
	//将来自“/outerdemo”下的请求重定向到view视图下的内部系统模板中
	@RequestMapping("/outerdemo")
	public String redirOuterDemo(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("something", "22");
		return "外部系统模板";
	}
	
}