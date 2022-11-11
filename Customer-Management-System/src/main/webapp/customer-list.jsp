<%@page import="java.sql.*" %>
<%@ include file='navbar.jsp' %>

<html>
 <body>
  <%
  Statement st=(Statement)application.getAttribute("st");
  ResultSet rst=st.executeQuery("select * from customerinfo");
  %>
  <div class=''container'>
   <div class='card mx-auto'>
    <div class='card-body'>
     <table class='table table-hover'>
      <thead>
       <tr>
        <th class='la'>Customer-id</th><th class='la'>First-name</th><th class='la'>Last-name</th>
        <th class='la'>City</th><th class='la'>Phone no</th><th class='la'>Email id</th>
        <th class='la' style='color:magenta'>Action</th>
       </tr>
      </thead>
      <tbody>
       <%
       while(rst.next())
       {
    	   %>
    	   <tr>
    	    <td class='la'><%=rst.getString(1)%></td>
    	    <td class='la'><%=rst.getString(2)%></td>
    	    <td class='la'><%=rst.getString(3)%></td>
    	    <td class='la'><%=rst.getString(4)%></td>
    	    <td class='la'><%=rst.getString(5)%></td>
    	    <td class='la'><%=rst.getString(6)%></td>
    	    <td class='la'>
    	     <a href='edit-customer.jsp?cid=<%=rst.getString(1)%>'>Edit|</a>
    	     <a href='delete-record.jsp?cid=<%=rst.getString(1)%>' onclick='return confirm("Are you sure to remove?")'>Remove</a>
    	    </td>
    	   </tr>
    	   <%
       }
       %>
      </tbody>
     </table>
    </div>
   </div>
  </div>
 </body>
</html>  