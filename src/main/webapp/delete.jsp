<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%
	String param=request.getParameter("no");
	String password=request.getParameter("password");
	
	Long no = Long.parseLong(param);
	
	System.out.println(no);
	System.out.println(password);
	
	new GuestBookDao().delete(no,password);
	
	response.sendRedirect(request.getContextPath());//그냥 페이지 전송하면 된다.
%>