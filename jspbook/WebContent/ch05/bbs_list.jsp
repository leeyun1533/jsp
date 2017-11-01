<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>table border_1</title>
</head>
<body>
	<div align="center">
		
		<table border=1 width=300>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
			</tr>
			<%
				for(int i=1;i<11;i++){
				%>
					<tr><td>번호<%=i %></td><td>제목<%=i %></td><td>작성자<%=i %></td></tr>
			<%	
				}
				
			%>
			
		</table>
	 </div>
</body>
</html>