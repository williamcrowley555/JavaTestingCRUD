package com.william.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.william.dao.LoginDAO;
import com.william.dao.LoginDAOImpl;
import com.william.entity.Login;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	LoginDAO loginDAO = null;
       
    public LoginController() {
    	loginDAO = new LoginDAOImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login login = new Login();
		login.setEmail(request.getParameter("email"));
		login.setPassword(request.getParameter("password"));

		String status = loginDAO.authenticate(login);
		if(status.equals("true")) {
			HttpSession session = request.getSession();
			session.setAttribute("email", login.getEmail());
			response.sendRedirect("EmployeeController?action=LIST");
		}
		else if(status.equals("false")) {
			response.sendRedirect("index.jsp?status=false");
		}
		else if(status.equals("error")) {
			response.sendRedirect("index.jsp?status=error");
		}
	}
}
