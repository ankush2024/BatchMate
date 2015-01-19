package com.trantor.batchmate.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.trantor.batchmate.model.UserBean;
import com.trantor.batchmate.service.LoginService;
import com.trantor.batchmate.util.EncryptionUtility;

public class LoginAction extends ActionSupport implements SessionAware{

	private LoginService loginservice;
	private UserBean user;
	private Map<String,Object> sessionMap;

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

	public LoginService getLoginservice() {
		return loginservice;
	}

	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}

	public String execute() {
	
		UserBean encrypted_user=new UserBean();
		
		encrypted_user.setUserName(user.getUserName());
		encrypted_user.setUserPassword(EncryptionUtility.encrypt(user.getUserPassword()));//Encrypt
		encrypted_user.setUserType(user.getUserType());
		
		String result = getLoginservice().verifyUser(encrypted_user);
		String loggedUser = user.getUserName();
		if(result == "operator"){
			sessionMap.put("loggedUser",loggedUser);
			return "operatorSuccess";
		}
		else if(result == "admin"){
			return "adminSuccess";
		}
		else{
			return "login";
		}
		
			
	}

	
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}
	
		
	}
