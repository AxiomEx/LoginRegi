<%@page import="model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="service.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mine.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>

<%	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String bNo = request.getParameter("bNo");
	String bTitle = request.getParameter("bTitle");
	String bContent = request.getParameter("bContent");

	BoardDAO dao = new BoardDAO();
	dao.boardUpdate(bNo, bTitle, bContent);
	response.sendRedirect("boardContent.jsp?bNo=" + bNo);
%>
	
	
</body>
</html>