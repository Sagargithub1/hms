package com.hms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hms.bean.UserBean;
import com.hms.dao.UserDao;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		out.println("Login Servlet");
		
		String userName=request.getParameter("username");
		String userPassword=request.getParameter("userpassword");
		
//		System.out.println(userName+ " "+ userPassword); //is value is getting from the login.jsp
		
		UserBean user=new UserBean();
		
		user.setUserName(userName);
		user.setUserPassword(userPassword);
		
//		System.out.println(user.getUserName()+" "+user.getUserPassword());//is value is set to the UserBean
		
		UserDao userDao=new UserDao();
		
		try {
			String userValidate=userDao.authenticateUser(user);
			System.out.println(userValidate);//checking the user validation
			if(userValidate.equals("Developer_Role")) {
				System.out.println("Developer_Role");
				HttpSession session=request.getSession();//createing a session
				session.setAttribute("Developer", userName);//session setting attribute
				request.setAttribute("userName",userName);
				request.getRequestDispatcher("/Developer.jsp").forward(request, response);
//				response.sendRedirect("Developer.jsp");
			}
			else if(userValidate.equals("Desk_Executive_Role")) {
				System.out.println("Desk_Executive_Role");
				HttpSession session=request.getSession();//createing a session
				session.setAttribute("DeskExecutive", userName);//session setting attribute
				request.setAttribute("userName",userName);
				request.getRequestDispatcher("/DeskExecutive.jsp").forward(request, response);
//				response.sendRedirect("Developer.jsp");
			}
			else if(userValidate.equals("Diagnostics_Role")) {
				System.out.println("Diagnostics_Role");
				HttpSession session=request.getSession();//createing a session
				session.setAttribute("Diagnostics", userName);//session setting attribute
				request.setAttribute("userName",userName);
				request.getRequestDispatcher("/Diagnostics.jsp").forward(request, response);
//				response.sendRedirect("Developer.jsp");
			}
			else if(userValidate.equals("Pharmacist_Role")) {
				System.out.println("Pharmacist_Role");
				HttpSession session=request.getSession();//createing a session
				session.setAttribute("Pharmacist", userName);//session setting attribute
				request.setAttribute("userName",userName);
				request.getRequestDispatcher("/Pharmacist.jsp").forward(request, response);
//				response.sendRedirect("Developer.jsp");
			}
			else {
				//temporary implementation
//				response.sendRedirect("login.jsp");
				System.out.println("Error message = "+userValidate);
	            request.setAttribute("errMessage", userValidate);
	 
	            request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
		
		
	}

}
