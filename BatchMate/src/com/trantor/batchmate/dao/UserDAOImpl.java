package com.trantor.batchmate.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.trantor.batchmate.model.UserBean;

public class UserDAOImpl extends JdbcDaoSupport implements UserDAO {

	@Override
	public UserBean getUserInfo(String username) {
		String user_info_qry = "SELECT * from user WHERE user_name = ? ";
		UserBean user = (UserBean)getJdbcTemplate().queryForObject(
				user_info_qry, new Object[]{username},
				new BeanPropertyRowMapper(UserBean.class));
		return user;
	}


	/*@Override
	public void insertUser(UserBean user) {
		
		
		String insertQuery = "Insert into USER(user_name,user_password) VALUES(?,?)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(insertQuery,
				new Object[] { user.getUserName(), user.getUserPassword() });

	}*/

}
