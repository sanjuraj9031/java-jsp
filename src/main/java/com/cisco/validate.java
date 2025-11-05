package com.cisco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.cisco.dao.userDao;

/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		userDao dao = new userDao();
		
		
		if(dao.validateUser(username, password)) {
			request.setAttribute(username, username);
			request.getRequestDispatcher("success.jsp").forward(request, response);
			
		}else {
			request.setAttribute("error", "invalid username or password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
