<%@page import="service.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");

	UserDAO dao = new UserDAO();
	String loginResult = dao.userInsert(user_id, user_pw);
	
	if(loginResult.equals("success")){
		response.sendRedirect("index.jsp");
	} else{
		response.sendRedirect("loginFail.jsp");
	}
%>