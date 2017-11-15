<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%request.setCharacterEncoding("utf-8"); %>

<%
// 데이터베이스 연결관련 변수 선언
Connection conn =null;
PreparedStatement pstmt=null;
//데이터베이스 연결관련정보를문자열로선언 
String jdbc_driver = "com.mysql.jdbc.Driver";
String jdbc_url="jdbc:mysql://localhost/FireMon";


 //1.jdbc 드라이버 로드 
 
 Class.forName(jdbc_driver);
 
 //2.데이터베이스 접속 
 conn= DriverManager.getConnection(jdbc_url,"lee","jung1571");
 
 //3.Statement 객체 생성
 
 String sql= "insert into jdbc_test values(?,?)";
 pstmt = conn.prepareStatement(sql);
 pstmt. setString(1,request.getParameter("username"));
 pstmt.setString(2,request.getParameter("email"));
 
 //4.quary 실행
 
 if(request.getParameter("username")!=null){
	 pstmt.executeUpdate();
 }
 
 conn.close();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC TEST </title>
</head>
<body>
<center>
	<h2>이벤트 등록 </h2>
	<hr>
	
	<form name=form1 method=post>
	등록이름:<input type=text name=username>
	주소:<input type =text name=email size=20>
	<input type=submit value="등록">
	
	</form>
<hr>
</center>
#등록 목록<p>
</body>
</html>