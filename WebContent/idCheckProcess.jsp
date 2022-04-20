<%@page import="service.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("user_id");
	System.out.println("user_id 값 확인 : " + user_id);

	UserDAO dao = new UserDAO();
	String result = dao.idCheck(user_id);
	
	if(result.equals("Duplicate")){
		out.print("Fail");
	} else{
		out.print("Avail");
	}
%>