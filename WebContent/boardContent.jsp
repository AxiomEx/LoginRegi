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
		String bNo = request.getParameter("bNo");
	
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectOne(bNo);
		
		
	%>
	
	<h1> 글 상세보기 </h1>

<form id='modifyForm' action="modifyProcess.jsp" method="post">

	<h3> 글 제목 :
		<span> <%= dto.getbTitle() %> </span>
 	</h3>
 	
 	<h3> 글 내용 :
		<span> <%= dto.getbContent() %> </span>
 	</h3>
 	
 	<h3> 글 작성자 :
		<span> <%= dto.getbWriter() %> </span>
 	</h3>
 	
 	<h3> 글 작성일 :
		<span> <%= dto.getbRegDate() %> </span>
 	</h3>

</form>

	<a href='modifyBoard.jsp?bNo=<%=dto.getbNo() %>'> 수정하기 </a> 
	&emsp; <a href='deleteProcess.jsp?bNo=<%=dto.getbNo() %>'> 삭제하기 </a> 
	&emsp; <a href='board.jsp'> 돌아가기 </a>

	
	
	
	<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>