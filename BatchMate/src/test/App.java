package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.trantor.batchmate.dao.UserDAOImpl;
import com.trantor.batchmate.model.UserBean;

public class App {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserDAOImpl userDao = (UserDAOImpl)context.getBean("userDAO");
		//UserBean user = new UserBean("ankush","ank");
		//userDao.insertUser(user);
		
	}

}
