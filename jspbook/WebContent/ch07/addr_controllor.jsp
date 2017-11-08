<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"
   import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<jsp:setProperty name="addr" property="*"/>  

<%

	String action= request.getParameter("action");
	
	if(action.equals("list")){
	ArrayList<AddrBean>addrlist=am.getAddrList(); 
	request.setAttribute("addrlist",addrlist);     
	pageContext.forward("add_list.jsp");
	
	}
	else if(action.equals("add")){
		am.add(addr);
		response.sendRedirect("addr_list.jsp");
	}
	
	
%>