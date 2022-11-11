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
	%>
	<div class='dv'>
	<label class='la' style='color:red'>customer record with id<%=request.getParameter("cid") %> has been updated</label>
	</div>
</body>
</html>