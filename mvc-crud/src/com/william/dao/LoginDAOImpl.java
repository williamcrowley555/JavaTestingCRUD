package com.william.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.william.entity.Login;
import com.william.util.DBConnectionUtil;

public class LoginDAOImpl implements LoginDAO {
	
	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet resultSet = null;

	@Override
	public String authenticate(Login login) {
		String sql = "SELECT * FROM tbl_login WHERE email = ? AND password = ?";
		try {
			connection = DBConnectionUtil.openConnection();
			ps = connection.prepareStatement(sql);
			ps.setString(1, login.getEmail());
			ps.setString(2, login.getPassword());
			resultSet = ps.executeQuery();
			if(resultSet.next()) {
				return "true";
			}
			else {
				return "false";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

}
