package com.crud.bean;

import java.util.HashMap;
import java.util.Map;

/**
 * 通用的返回的类
 * @author copywang
 *
 */
public class Msg {
	//状态码 100-成功 200-失败
	private int code;
	//提示信息
	private String msg;
	//用户要返回给浏览器的数据
	private Map<String,Object> extend = new HashMap<String,Object>();
	
	public static Msg success() {
		Msg result = new Msg();
		result.setCode(100);
		result.setMsg("处理成功");
		return result;
	}
	
	/***
	 * gjh 登陆时区分内外部用户
	 * @return
	 */
	public static Msg intersuccess() {
		Msg result = new Msg();
		result.setCode(101);
		result.setMsg("内部用户处理成功");
		return result;
	}
	
	public static Msg outersuccess() {
		Msg result = new Msg();
		result.setCode(102);
		result.setMsg("外部用户处理成功");
		return result;
	}
	
	/***
	 * gjh 检测数据库判断输入UID合法性
	 * @return
	 */
	public static Msg initialUIDillegal() {
		Msg result = new Msg();
		result.setCode(103);
		result.setMsg("未找到对应初始建档员的UID！");
		return result;
	}
	
	public static Msg responsibleUIDillegal() {
		Msg result = new Msg();
		result.setCode(104);
		result.setMsg("未找到对应审核负责人的UID！");
		return result;
	}
	
	public static Msg piUIDillegal() {
		Msg result = new Msg();
		result.setCode(105);
		result.setMsg("未找到对应PI的UID！");
		return result;
	}
	
	/***
	 * gjh 检测数据库判断输入耳标编号合法性
	 * @return
	 */
	public static Msg earRingNoillegal() {
		Msg result = new Msg();
		result.setCode(106);
		result.setMsg("同一耳标不得重复配置！");
		return result;
	}
	
	public static Msg fail() {
		Msg result = new Msg();
		result.setCode(200);
		result.setMsg("处理失败");
		return result;
	}
	/***
	 * gjh 登陆时判断密码正误
	 * @return
	 */
	public static Msg pwdfail() {
		Msg result = new Msg();
		result.setCode(201);
		result.setMsg("密码错误");
		return result;
	}
	
	public Msg add(String key, Object value) {
		this.getExtend().put(key,value);
		return this;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map<String, Object> getExtend() {
		return extend;
	}
	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}
	
	
}
