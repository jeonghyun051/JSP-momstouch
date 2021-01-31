package com.cos.momstouch.service;

import com.cos.momstouch.domain.user.JoinReqDto;
import com.cos.momstouch.domain.user.LoginReqDto;
import com.cos.momstouch.domain.user.User;
import com.cos.momstouch.domain.user.UserDao;

public class UserService {
	UserDao userDao = new UserDao();
	
	public int 유저네임중복체크(String username) {
		int result = userDao.usernameCheck(username);
		return result;
	}
	
	public int 회원가입(JoinReqDto dto) {
		
		int result = userDao.save(dto);
		
		return result;
	}
	
	public User 로그인(LoginReqDto dto) {
		
		User user = userDao.findByUsernameAndPassword(dto);
		return user;
		
	}
	
	
}
