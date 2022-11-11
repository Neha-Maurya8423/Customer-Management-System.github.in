<%@page import="java.sql.*" %>
<html>
<body>
	<%
	PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
   ps.setString(1,request.getParameter("cid"));
   ResultSet rst=ps.executeQuery();
   if(rst.next())
   {
	   %>
	<%@ include file='navbar.jsp'%>
	<table border='1' class='tar'>
		<tr style='background-color: orange; color: white; font-size: 1.8vw'>
			<td colspan="2" align="center">Customer Details</td>
		</tr>
		<tr>
			<th class='la' align="left">Customer id</th>
			<td class='la'><%=rst.getString(1)%></td>
		</tr>
		<tr>
			<th class='la' align="left">First name</th>
			<td class='la'><%=rst.getString(2)%></td>
		</tr>
		<tr>
			<th class='la' align="left">Last name</th>
			<td class='la'><%=rst.getString(3)%></td>
		</tr>
		<tr>
			<th class='la' align="left">City</th>
			<td class='la'><%=rst.getString(4)%></td>
		</tr>
		<tr>
			<th class='la' align="left">Phone number</th>
			<td class='la'><%=rst.getString(5)%></td>
		</tr>
		<tr>
			<th class='la' align="left">Email Id</th>
			<td class='la'><%=rst.getString(6)%></td>
		</tr>
	</table>
	<%
	   return;
   }
  %>
	<jsp:include page="search-customer.jsp" />
	<div class='dvv'>
		<label class='la' style='color: red'>Customer with id <%=request.getParameter("cid")%>
			not found
		</label>
	</div>
</body>
</html>