package com.trantor.batchmate.dao;

import com.trantor.batchmate.model.UserBean;

public interface UserDAO {

	/*public void insertUser(UserBean user);*/
	public UserBean getUserInfo(String username);
	
}
