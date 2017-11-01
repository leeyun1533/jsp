<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    jspbook.ch07.LoginBean login = new jspbook.ch07.LoginBean();
  		login.setUserid(request.getParameter("userid"));
  		login.setPasswd(request.getParameter("passwd"));
  	%>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>로그인 예제 </h2>
		<hr>
		<%
				if(!login.checkUser()){
					
					out.println("로그인 실패!!");
				}
				else{
					out.println("로그인 성공! ");
				}
		%>
		
		사용자 아이디: <jsp:getProperty name="login" property="userid"/><br>
		사용자 패스워드: <jsp:gerProperty name="login' property="passwd"/>
	</center>
	
</body>
</html>