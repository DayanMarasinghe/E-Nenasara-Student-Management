package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("stdid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = StudentDBUtil.updatestudent(id, name, email, username, password);
		
		if(isTrue == true) {
			List<Student> Details = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("Details",Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
		else {
			List<Student> Details = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("Details",Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
	}

}
