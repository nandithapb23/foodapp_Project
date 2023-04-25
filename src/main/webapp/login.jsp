<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<form action="login" method="post">
	<h1 style="text-align: center;color: green">**********Login Into Your Account*********</h1> 
	 <br> <br> <br>
		    <table width="40%"  bgcolor="grey"  length="600px" style="margin-left: auto;margin-right: auto;">
			<tr>
				<td >Email :</td>
				<td><input type="email" name="email"
					placeholder="Enter your email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"
					placeholder="Enter your password"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input type="submit" value="Login" ></td>
			</tr>
		</table>
	</form>
</body>
</html>