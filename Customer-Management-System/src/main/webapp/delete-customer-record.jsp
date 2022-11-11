<%@page import="java.sql.*" %>
<html>
<body>
<jsp : include page="delete-customer.jsp" />
	<div class='dvv'>
	<%
	 PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
   String cid=request.getParameter("cid");
   ps.setString(1,cid);
   int n=ps.executeUpdate();
   if(n>=1)
   {
	   %>
	   <label class='la' style='color: red'>Customer with id <%=request.getParameter("cid")%>
			has been deleted
		</label>
		<% 
	
   }
   else
   {
	   %>
	   <label class='la' style='color: red'>Customer with id <%=request.getParameter("cid")%>
		does not exist 
	</label>
	<%
   }
  %>
	
		
	</div>
</body>
</html>