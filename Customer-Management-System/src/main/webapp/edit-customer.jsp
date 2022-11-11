<%@page import="java.sql.*" %>
<%@ include file='navbar.jsp' %>

<html>
 <body>
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
  ps.setString(1,request.getParameter("cid"));
  ResultSet rst=ps.executeQuery();
  rst.next();
  %>
  <div class='container'>
   <div class='card col-md-10 mx-auto'>
    <div class='card-body'>
     <form action="update-record.jsp" method="post">
      <div class='row form-group'>
       <div class='col-md-10'>
        <label for='cid' class='la'>Customer id</label>
        <input type="text" value="<%=rst.getString(1)%>" readonly="readonly" name='cid' id='cid' class='form-control la' required>
       </div>
      </div>
      <div class='row form-group'>
       <div class='col-md-5'>
        <label for='fname' class='la'>Edit first name</label>
        <input type="text" value="<%=rst.getString(2)%>" name='firstname' id='fname' class='form-control la' required>
       </div>
       <div class='col-md-5'>
        <label for='lname' class='la'>Edit last name</label>
        <input type="text" value="<%=rst.getString(3)%>" name='lastname' id='lname' class='form-control la' required>
       </div>
      </div>
       <div class='row form-group'>
       <div class='col-md-5'>
        <label for='city' class='la'>Edit city</label>
        <input type="text" value="<%=rst.getString(4)%>" name='city' id='city' class='la form-control' required>
       </div>
       <div class='col-md-5'>
        <label for='phone' class='la'>Edit phone number</label>
        <input type="text" value="<%=rst.getString(5)%>" name='phone' id='phone' class='la form-control' required>
       </div>
      </div>
      <div class='row form-group'>
       <div class='col-md-10'>
        <label for='email' class='la'>Edit email id</label>
        <input type="text" value="<%=rst.getString(6)%>" name='email' id='email' class='form-control la' required>
       </div>
      </div>
      <div class='row form-group'>
       <div class='col-md-10'>
        <button class='btn btn-secondary'>Update Record</button>
       </div>
      </div>
     </form>
    </div>
   </div>
  </div>
 </body>
</html>