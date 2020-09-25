package com.william.dao;

import com.william.entity.Login;

public interface LoginDAO {
	String authenticate(Login login);
}
