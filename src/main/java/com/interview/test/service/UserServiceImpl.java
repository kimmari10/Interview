package com.interview.test.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.interview.test.dao.UserDao;
import com.interview.test.vo.User;

@Controller
public class UserServiceImpl implements UserService{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public boolean isRegisteredLoginId(String email) {
		
		User user = sqlsession.getMapper(UserDao.class).getUser(email);
		
		if(user == null)
		{
			return false;
		}
		
		else
			return true;
	}
	

}
