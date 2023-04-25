<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:inactivecaption; margin-top: 200px">
	<%
	String message = (String)request.getAttribute("message");
	if (message != null) {
	%>
	<h2 style="text-align: center;color: maroon;">!!!!!!!!!!!!!!    <%=message%>    !!!!!!!!!!!!!</h2>
	<%
	}
	%>
	<legend align="center">
	<table style="background-color: infobackground;">
		<tr>
			<td><a href="home.jsp"><button style="color: navy;">HOME</button></a></td>
			<td><a href="login.jsp"><button style="color: darkgreen;">LOGIN</button></a></td>
		</tr>
	</table>
	</legend>
</body>
</html>