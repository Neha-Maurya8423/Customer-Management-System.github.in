<%@ include file='navbar.jsp'%>
<html>
<body>
	<form action='get-record.jsp' method='post'>
		<table class='ta'>
			<tr>
				<td class='la tdp'>Enter customer id</td>
				<td class='tdp'><input class='tb' type='text' name='cid'
					required></td>
				<td class='tdp'><button class='bt'style='background-color:black'>Get Record</button></td>
			</tr>
		</table>
	</form>
</body>
</html>