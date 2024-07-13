<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Beneficiary</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
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
	<%
	if (session.getAttribute("udata") == null) {
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Profile.jsp" class="navbar-brand"><button class="btn btn-dark" >Profile</button></a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">Add Details of Beneficiary</a>
			</div>
		</div>
	</nav>
	
	<div class="container col-8">
		<form action="AddbController" method="post">
		<table align="center" border="4px" style="border-color: black;" class="table">
			<tr>
				<td>Enter Account Number :</td>
				<td><input type="text" name="aNo" placeholder="Account Number" class="form-control"
							pattern="[0-9]{3,5}" maxlength="5"
							title="Only Numbers are Accepted, Minimum Length 3, Maximum Length 5" required></td>
			</tr>
			<tr>
				<td><button type="reset" class="btn btn-dark" >RESET</button></td>
				<td><button type="submit" class="btn btn-dark" >ADD</button></td>
			</tr>
		</table>
	</form>
	</div>
	
	
	<%if(session.getAttribute("accf")!=null){%>
		<script>
			alert("Enter A Valid Account Number!!")
		</script>
	<%}session.removeAttribute("accf");%>
	
	<%if(session.getAttribute("sacc")!=null){%>
		<script>
			alert("You Can Not Add Yourself As a Beneficiary!!")
		</script>
	<%}session.removeAttribute("sacc");%>
	
</body>
</html>


