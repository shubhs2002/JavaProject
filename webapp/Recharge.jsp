<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<title>Recharge</title>
<style>
form {
	margin: auto;
	margin-top: 30px;
	background-color: rgb(119, 200, 232);
	border: 4px solid black;
	padding: 50px;
}
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Profile.jsp" class="navbar-brand"><button class="btn btn-dark">PROFILE</button></a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">RECHARGE</a>
			</div>
		</div>
	</nav>
	
	<div class="container col-8">
	<form action="RechargeController" method="post">
		<table align="center" border="4px" class="table" style="border-color: black;">
			<tr>
				<td>Enter Mobile Number :</td>
				<td><input type="text" name="mNo" placeholder="Mobile Number" class="form-control" pattern="^\d{10}$" maxlength="10"
							title="Only Numbers are Accepted" required></td>
			</tr>
			<tr>
				<td>Select Service Operator :</td>
				<td>
					<select name="mOp" class="form-select" aria-label="Select Mobile Operator">
						<option value="Jio">Jio</option>
						<option value="Airtel">Airtel</option>
						<option value="VI">VI (Vodafone Idea)</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Enter Recharge Amount :</td>
				<td><input type="text" name="Amt" placeholder="Recharge Amount" pattern="[0-9]*"
							class="form-control" title="Only Numeric Values Are Accepted"
							maxlength="8" required></td>
			</tr>

			<tr>
				<td><button type="reset" class="btn btn-dark">RESET</button></td>
				<td><button type="submit" class="btn btn-dark">CONFIRM</button></td>
			</tr>
		</table>
	</form>
</div>
	

</body>
</html>