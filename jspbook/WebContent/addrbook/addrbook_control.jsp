<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 
 	request.setCharacterEncoding("utf-8");
 	String action = request.getParameter("action");
 	
 	if(action.equals("list")){
 		response.sendRedirect("addrbook_list.jsp");
 	}
 	else if(action.equals("insert")){
 		response.sendRedirect("addrbook_list.jsp");

 	}
 	else if(action.equals("edit")){
 		response.sendRedirect("addrbook_edit_form.jsp");

 	}
 	else if(action.equals("update")){
 		response.sendRedirect("addrbook_list.jsp");

 	}
 	else if(action.equals("delete")){
 		response.sendRedirect("addrbook_list.jsp");

 	}
 %>