<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="signup" method="post" >
	<h1 style="text-align: center">===============SignUp Page==================</h1> 
	
	 <br> <br> <br>
		    <table width="50%" bgcolor="grey" length="600px" style="margin-left: auto;margin-right: auto;">
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"
					placeholder="Enter your name"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email"
					placeholder="Enter your email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"
					placeholder="Enter your password"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel" name="phone"
					placeholder="Enter your phone"></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><input type="text" name="address"
					placeholder="Enter your address"></td>
			</tr>
			<tr>
				<td>Role :</td>
				<td><select name="role">
						<option>Select</option>
						<option value="manager">Manager</option>
						<option value="staff">Staff</option>
						<option value="customer">Customer</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input type="submit" value="Save" ></td>
			</tr>
		</table>
		

	</form>
</body>
</html>