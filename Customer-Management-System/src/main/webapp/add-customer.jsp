<%@ include file='navbar.jsp'%>
<html>
<body class='container'>
	<div class='card col-md-10 mx-auto'>
		<div class='card-body'>
			<form action='save-record.jsp' method='post'>
				<div class='row form-group'>
					<div class='col-md-10'>
						<label for='cid' class='la'>Enter Customer id</label><span>*</span> <input
							type="text" name='cid' id='cid' class='form-control la' required>
					</div>
				</div>
				<div class='row form-group'>
					<div class='col-md-5'>
						<label for='fname' class='la'>Enter First Name</label><span>*</span> <input
							type="text" name='firstname' id='fname' class='form-control' required>
					</div>
					<div class='col-md-5'>
						<label for='lname' class='la'>Enter Last Name</label><span>*</span> <input
							type="text" name='lastname' id='lname' class='form-control la' required>
					</div>
				</div>

				<div class='row form-group'>
					<div class='col-md-5'>
						<label for='city' class='la'>Enter City</label><span>*</span> <input
							type="text" name='city' id='city' class='form-control la' required>
					</div>
					<div class='col-md-5'>
						<label for='phone' class='la'>Enter phone</label><span>*</span> <input
							type="text" name='phone' id='phone' class='form-control' required>
					</div>
				</div>
				<div class='row form-group'>
					<div class='col-md-10'>
						<label for='email' class='la'>Enter Email</label><span>*</span> <input
							type="text" name='email' id='email' class='form-control la' required>
					</div>
				</div>
				<div class='row form-group'>
				<div class='col-md-10'>
				 <button class='btn btn-primary'>Save Record</button>
				</div>
				</div>
				<span>*</span><label class='la'>Mandetory field</label>
			</form>
		</div>
	</div>
</body>
</html>