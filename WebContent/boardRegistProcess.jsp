<%@page import="service.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bWriter = request.getParameter("bWriter");
		
		BoardDAO dao = new BoardDAO();
		dao.boardInsert(bTitle, bContent, bWriter);
	%>
	
<script type="text/javascript">
	location.href='board.jsp';
</script>



	작성된 제목 : <%=bTitle%> <br> 
	작성된 내용 : <%=bContent%> <br>
	작성된 작성자 : <%=bWriter%> <br>
	
	
	
	<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>