<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>request 테스트 결과 -1</h2>



<hr>

<table border=1 cellpacing="1' cellpadding="5">
<tr>
<td>이름</td>
<td><%=request.getParameter("username") %></td>

<tr>
<td>직업</td>
<td><%=request.getParameter("job") %></td>
<tr>
<td>관심분야</td>
<td>

<%

%></td>
</table>
<hr>
<h2>request 테스트 결과-2</h2>
<table border=0><tr><td>
1.클라이언트 ip주소: <%=request.getRemoteAddr() %><br>
2.요청 메서드 : <%=request.getMethod()%><br>
<%
		Cookie cookie[] =request.getCookies();
%>
</td></tr>
</table>

</center>
</body>
</html>