package com.interview.test.dao;

import java.util.List;

import com.interview.test.vo.User;

public interface UserDao {
	User getUser(String id);
	int insert(User user);
	List<User> getUserList();
}
