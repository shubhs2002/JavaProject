<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bank.model.Register" %>
<%@ page import="bank.dao.RegisterDao" %>
<%@ page import="bank.dao.RegisterDaoImpl" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<!--pflag(password Updation),thflag(Transaction History) -->
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
<link href="./css/AccDetails.css" rel="stylesheet">
<style>
form {
	margin: auto;
	background-color: rgb(119, 200, 232);
	border: 4px solid black;
	padding: 30px;
}
</style>
</head>
<body>
	<%!
	List<Register> rlst = null; 
	List<Register> rlst1 = null; 
	RegisterDao rdao = new RegisterDaoImpl();
	int i = 0;
	%>
	
	<%
	if(session.getAttribute("udata")==null){
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	rlst1 = (List<Register>)session.getAttribute("udata");
	i = rlst1.get(0).getaNo();
	rlst = rdao.retrieveRecord(i);
	%>
	
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Profile.jsp" class="btn btn-dark btn-lg" style="margin:10px;margin-top:20px;">Profile</a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">Account Details</a>
			</div>
		</div>
	</nav>
	
	<div class="container col-6">
	<form action="AccDetailsController">
		<table border="4px" style="border-color: black;" class="table">
			<tr>
				<td>Account Number: </td>
				<td><%=rlst.get(0).getaNo() %></td>
			</tr>
			<tr>
				<td>Customer Name: </td>
				<td><%=rlst.get(0).getcName()%></td>
			</tr>
			<tr>
				<td>Mobile Number: </td>
				<td><%=rlst.get(0).getmNo()%></td>
			</tr>
			<tr>
				<td>Account Balance: </td>
				<td><%=rlst.get(0).getaBal()%></td>
			</tr>
			<tr>
				<td>Change Password: </td>
				<td><a href="Password.jsp" class="btn btn-dark btn-lg">Proceed</a></td>
			</tr>
			<tr>
				<td>View Transaction History</td>
				<td><a href="TransactionController" class="btn btn-dark btn-lg">View</a></td>
			</tr>
		</table>

	</form>
	</div>
	<%if(session.getAttribute("pflag")!=null){%>
		<script>
			alert("Password Changed Successfully")
		</script>	
	<%}session.removeAttribute("pflag");%>
	
	<%if(session.getAttribute("thflag")!=null){%>
		<script>
			alert("Transaction History Not Found!!")
		</script>	
	<%}session.removeAttribute("thflag");%>
</body>

</html>


