<%@page import="model.BoardDTO"%>
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
String bNo = request.getParameter("bNo");

BoardDAO dao = new BoardDAO();
BoardDTO dto = dao.selectOne(bNo);
%>

	<h1> 수정하기 </h1>
	
<form action="modifyProcess.jsp" method='post' id='modifyForm'>	
	
	<input type='hidden' name='bNo' id='bNo' value='<%=dto.getbNo()%>'>
	
	
	<h3>제목 :  
		<span> 
	 		<input type='text' name='bTitle' id='bTitle' value='<%=dto.getbTitle() %>'> <br>
		</span>
	</h3> 
	
	<h3> 내용 : 
		<span>
			<input type='text' name='bContent' id='bContent' value='<%=dto.getbContent() %>'> <br>
		</span>
	</h3>
	
	<input type='button' id='boardUpdateBtn' value='수정하기'>
	<input type='button' value='돌아가기'>
	
</form>
	
	
	
	
	
	
	<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>