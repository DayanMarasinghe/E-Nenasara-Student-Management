package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("pword");
		
		boolean isTrue;
		
		isTrue = StudentDBUtil.insertstudent(name, email, username, password);
		
		if(isTrue == true) {
			List<Student> Details = StudentDBUtil.regDetails(username);
			request.setAttribute("Details",Details);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("account.jsp");
			dis1.forward(request, response);
		}
	}

}
