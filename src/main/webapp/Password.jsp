<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bank.model.Register"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<!-- f1,pflag(password Updation),thflag(Transaction History) -->
<title>Account Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

<style>
#pdiv {
	margin: auto;
	margin-top: 20px;
	background-color: rgb(119, 200, 232);
	border: 4px solid black;
	padding: 2rem;
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("udata") == null) {
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	%>

	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Report.jsp" class="btn btn-dark">Profile Report</a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">Change Password</a>
			</div>
		</div>
	</nav>

	<div class="container col-8" id="pdiv">
		<form action="PasswordController" method="post" id="ptable">
			<table align="center" border="4px" class="table"
				style="border-color: black;">
				<tr>
					<td style="font-size: large;">Enter New Password</td>
					<td><input type="text" name="npass" placeholder="Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}"
						class="form-control" maxlength="20" required
						title="At least 1 Uppercase,
								      At least 1 Lowercase,
								      At least 1 Number,
								      At least 1 Symbol, symbol allowed --> !@#$%^&*_=+-,
								      Min 8 chars and Max 12 chars"></td>
				</tr>
				<tr style="text-align: center;">
					<td><button type="reset" class="btn btn-dark">Reset</button></td>
					<td><button type="submit" class="btn btn-dark">Confirm</button></td>
				</tr>
			</table>
		</form>
	</div>

</body>

</html>


