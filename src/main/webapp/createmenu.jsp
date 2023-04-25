<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: infobackground;">
	<form action="savemenu" method="post">
	 <legend align="center">
	 <h1 style="text-align: center;color: green;">**********Enter Menu Details**********</h1>
		<table  bgcolor="grey" style="margin-left: auto;margin-right: auto;margin-top: 100px;width: 100mm;color: ">
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" placeholder="Enter the name"></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description"
					placeholder="Enter the description"></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price"
					placeholder="Enter the price"></td>
			</tr>
			<tr>
				<td>Offer :</td>
				<td><input type="text" name="offer"
					placeholder="Enter the offer"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input type="submit" value="Save"></td>
			</tr>
		</table>
		</legend>
	</form>
</body>
</html>