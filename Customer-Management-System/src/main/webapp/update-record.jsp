<%@page import="java.sql.*" %>
<%@ include file='navbar.jsp'%>

<html>
<body>
	<%
	PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
	ps.setString(6, request.getParameter("cid"));
	ps.setString(1, request.getParameter("firstname"));
	ps.setString(2, request.getParameter("lastname"));
	ps.setString(3, request.getParameter("city"));
	ps.setString(4, request.getParameter("phone"));
	ps.setString(5, request.getParameter("email"));
	ps.executeUpdate();
	response.sendRedirect("customer-list.jsp");
	%>
</body>
</html>