package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("stdid");
		boolean isTrue;
		
		isTrue=StudentDBUtil.deleteStudent(id);
		
		if(isTrue==true) {
			RequestDispatcher disp = request.getRequestDispatcher("register.jsp");
			disp.forward(request, response);
		}
		else {
			List<Student> Details = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("Details", Details);
			
			RequestDispatcher disp = request.getRequestDispatcher("account.jsp");
			disp.forward(request, response);
		}
	}

}
