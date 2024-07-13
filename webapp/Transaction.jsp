<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="bank.model.Transaction"%>
<%@ page import="bank.model.Register"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel=”stylesheet” type=”text/css” />
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<title>Transaction History</title>
<style>
td,tr{
	align-content: center;
	padding: 10px;
	border: 2px solid;
}
#ttable{
	margin: auto;
	margin-top: 30px;
	background-color: rgb(100, 177, 248);
	border: 4px solid black;
	padding: 2rem;
}
</style>
</head>
<body>
	<%
	if(session.getAttribute("udata")==null){
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	%>
	<%! List<Transaction> tlst = null; List<Register> rlst = null; %>
	<% 
		tlst = (List<Transaction>)session.getAttribute("tlst");
		rlst = (List<Register>)session.getAttribute("udata");
	%>

	
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a href="Profile.jsp" class="btn btn-dark">Profile</a>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto"
					style="font-size: xx-large; font-weight: bold;">Transaction History</a>
			</div>
		</div>
	</nav>
	
<div id="ttable" class="container col-10">
	<table border="4px" style="border-color: black;" class="table">
		<tr>
			<td>Transaction ID</td>
			<td>From Account</td>
			<td>To</td>
			<td>Transaction Date</td>
			<td>Transaction Type</td>
			<td>Amount</td>
		</tr>
		<%
		for (Transaction t : tlst) {
			if(rlst.get(0).getaNo()==t.getFaccNo()){
		%>
		<tr>
			<td><%=t.getId()%></td>
			<td><%=t.getFaccNo()%></td>
			<td><%=t.getTaccNo()%></td>
			<td><%=t.getDate()%></td>
			<td><%=t.getService()%></td>
			<td>-<%=t.getAmount()%></td>
		</tr><%} else{%>
		<tr>
			<td><%=t.getId()%></td>
			<td><%=t.getFaccNo()%></td>
			<td><%=t.getTaccNo()%></td>
			<td><%=t.getDate()%></td>
			<td><%=t.getService()%></td>
			<td>+<%=t.getAmount()%></td>
		</tr>
		<%
		}}
		%>
	</table>
</div>
	

</body>
</html>