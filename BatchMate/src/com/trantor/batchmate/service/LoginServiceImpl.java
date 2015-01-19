package com.trantor.batchmate.service;

import com.trantor.batchmate.dao.UserDAOImpl;
import com.trantor.batchmate.model.UserBean;

public class LoginServiceImpl implements LoginService {

	UserDAOImpl userDao;

	public UserDAOImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAOImpl userDao) {
		this.userDao = userDao;
	}

	/*
	 * @Override public void createUser(UserBean user) {
	 * 
	 * getUserDao().insertUser(user); System.out.println("user inserted"); }
	 */

	/*
	 * @Override public void updateUser(UserBean user) { // TODO Auto-generated
	 * method stub
	 * 
	 * }
	 * 
	 * @Override public void deleteUser(UserBean user) { // TODO Auto-generated
	 * method stub
	 * 
	 * }
	 */

	@Override
	public String verifyUser(UserBean user) {
		String result;
		String username = user.getUserName();
		UserBean dbUser = getUserDao().getUserInfo(username);
		/*
		 * System.out.println(user.getUserType());
		 * System.out.println(dbUser.getUserType());
		 */
		if (dbUser.getUserPassword().equals(user.getUserPassword())
				&& dbUser.getUserType().equalsIgnoreCase(user.getUserType())) {
			//System.out.println(dbUser.getUserType());
			if (dbUser.getUserType() .equals("operator")) {
				result = "operator";
			} else {
				result = "admin";
			}
		} else {
			result = "error";
		}
		return result;
	}

}
