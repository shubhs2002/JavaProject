<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="bank.model.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<title>Fund Transfer</title>
<style>
form {
	margin: auto;
	margin-top: 30px;
	background-color: rgb(119, 200, 232);
	border: 4px solid black;
	padding: 40px;
}
</style>
</head>

<body>
<body>
	<%
	if (session.getAttribute("udata") == null) {
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	%>
	<%
	if (session.getAttribute("bedata") == null) {
		session.setAttribute("fuacc", true);
		response.sendRedirect("FundController");
		return;
	}
	%>
	<%!List<Beneficiary> blst = null;%>
	<% blst = (List<Beneficiary>)session.getAttribute("bedata"); %>
	
	
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Profile.jsp" class="navbar-brand"><button class="btn btn-dark">PROFILE</button></a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">FUND TRANSFER</a>
			</div>
			
		</div>
	</nav>
	
	<div class="container col-8">
	<form action="PaymentController" method="post">
	
		<div align="center" style="margin-top: -30px;">
			<h1>List Of Beneficiearies</h1>	
		</div>
		
		<table align="center" border="4px" style="border-color: black;" class="table">
			<tr>
				<td>To Account</td>
				<td>Name</td>
				<td>Mobile Number</td>
				<td>Select</td>
			</tr>
			<%
			if (blst != null) {
				for (Beneficiary b : blst) {
			%>
			<tr>
				<td><%=b.getT_accno()%></td>
				<td><%=b.getName()%></td>
				<td><%=b.getMobileno()%></td>
				<td><input type="radio" name="select" 
					value="<%=b.getT_accno()%>" required></td>
			</tr>
			<%
			}
			}
			%>
			<tr>
				<td colspan="2" style="font-size: large;">Enter Amount to transfer :</td>
				<td colspan="2"><input type="text" name="Amount" placeholder="Amount" pattern="[0-9]*"
							class="form-control" title="Only Numeric Values Are Accepted"
							maxlength="8" required></td>
			</tr>
			<tr>
				<td><button type="reset" class="btn btn-dark">RESET</button></td>
				<td colspan="2"><a href="Addb.jsp"><button class="btn btn-dark" type="button">Add New Beneficiary</button></a></td>
				<td><button type="submit" class="btn btn-dark">PAY</button></td>
			</tr>
		</table>
	</form>
	</div>
	
	
	
	
	<%if(session.getAttribute("bflag")!=null){%>
		<script>
			alert("Beneficiary Is Aldredy Present In The List!!")
		</script>
	<%}session.removeAttribute("bflag");%>
</body>

</html>