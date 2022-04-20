<%@page import="service.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
    	String user_id = request.getParameter("user_id");
    	String user_pw = request.getParameter("user_pw");
    	
    	UserDAO dao = new UserDAO();
    	int result = dao.login(user_id, user_pw);
    	
    	if(result == 1){
    		session.setAttribute("user_id", user_id);
%>
    	<script type="text/javascript">
    		location.href='index.jsp';
    	</script>
<% 
    	} else {
%>    		
    	<h1> 로그인 실패 </h1>
    	<a href='login.jsp'> 다시 로그인하기 </a>
 <% 
    	}
 %>   
	
</body>
</html>