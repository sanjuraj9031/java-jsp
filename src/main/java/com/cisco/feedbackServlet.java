package com.cisco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class feedbackServlet
 */
@WebServlet("/feedbackServlet")
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int totalratings = 0;
	int count = 0;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int rating = Integer.parseInt(request.getParameter("rating"));
		String comment = request.getParameter("comment");
		
		totalratings += rating;
		count++;
		
		double average = (double)totalratings/count;
		
		request.setAttribute("avg", average);
		request.setAttribute("comment", comment);
		
		request.getRequestDispatcher("display.jsp").forward(request, response);
	}

}
