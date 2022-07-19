package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.dao.UserMapper;
import com.crud.bean.User;
import com.crud.bean.UserExample;
/***
 * @2020-7-13 gjh
 * @author XPS
 *
 */
@Service
public class UserService {
	@Autowired
	UserMapper userMapper; 
	/***
	 * 查询是否存在该用户并且密码正确
	 * @param userName
	 * @param passWord
	 * @return
	 */
	public int finduser(String userName,String passWord){
		UserExample example = new UserExample();
		//System.out.println(userName+" "+passWord);
		example.createCriteria().andTelEqualTo(userName).andPwdEqualTo(passWord);
		
		//System.out.println(userMapper.countByExample(example));
		if(userMapper.countByExample(example) == 0){
			return 0;
		}
		else{
			example.clear();
			example.createCriteria().andTelEqualTo(userName).andPwdEqualTo(passWord).andDeptEqualTo("外部");
			if(userMapper.countByExample(example) == 1){
				return 2;
			}
			return 1;
		}
	}
	/***
	 * 查询是否存在该用户
	 * @param userName
	 * @return
	 */
	public int finduser(String userName){
		UserExample example = new UserExample();
		//System.out.println("finduser by name:"+userName);
		example.createCriteria().andTelEqualTo(userName);
		//System.out.println(userMapper.countByExample(example));
		if(userMapper.countByExample(example) == 0){
			return 0;
		}
		return 1;
	}
	
	/*
	 * 查询用户的全部信息
	 * 
	 * */
	public User getInformation(String userName) {
		UserExample example = new UserExample();
		example.createCriteria().andTelEqualTo(userName);
		List<User> userinfo = userMapper.selectByExample(example);
		return userinfo.get(0);
	}
}



