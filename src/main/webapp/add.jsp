<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="java.util.Calendar"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String text=request.getParameter("message");
	
	GuestBookVo vo=new GuestBookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setText(text);
	new GuestBookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());//그냥 페이지 전송하면 된다.
%>
