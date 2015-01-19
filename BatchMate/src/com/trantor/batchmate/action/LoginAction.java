package com.trantor.batchmate.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.trantor.batchmate.model.UserBean;
import com.trantor.batchmate.service.LoginService;

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
			
		
		String result = getLoginservice().verifyUser(user);
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
