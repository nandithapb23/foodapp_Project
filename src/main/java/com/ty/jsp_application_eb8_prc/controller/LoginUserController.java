package com.ty.jsp_application_eb8_prc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ty.jsp_application_eb8_prc.dao.MenuDao;
import com.ty.jsp_application_eb8_prc.dao.UserDao;
import com.ty.jsp_application_eb8_prc.dto.Menu;
import com.ty.jsp_application_eb8_prc.dto.User;

@WebServlet("/login")
public class LoginUserController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		UserDao dao = new UserDao();
		try{
		User user = dao.getUserByEmail(email);

		MenuDao menuDao = new MenuDao();
		List<Menu> menus = menuDao.getAllMenus();

		if (user.getPassword().equals(password) && user.getRole().equals("manager")) {
			req.setAttribute("menus", menus);
			RequestDispatcher dispatcher = req.getRequestDispatcher("menu.jsp");
			dispatcher.forward(req, resp);
		} else if (user.getPassword().equals(password) && user.getRole().equals("customer")) {
			
			HttpSession session=req.getSession();
			session.setAttribute("email", email);
			
			
			//req.setAttribute("menus", menus);
			RequestDispatcher dispatcher = req.getRequestDispatcher("customer.jsp");
			dispatcher.forward(req, resp);
		} else if (user.getPassword().equals(password) && user.getRole().equals("staff")) {
			req.setAttribute("menus", menus);
			RequestDispatcher dispatcher = req.getRequestDispatcher("staff.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("message", "Enter valid Password");
			RequestDispatcher dispatcher = req.getRequestDispatcher("success.jsp");
			dispatcher.forward(req, resp);
		}
		}catch (Exception e) {
			req.setAttribute("message", "Please Enter Valid Email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("success.jsp");
			dispatcher.forward(req, resp);
		}
	}
		

}
