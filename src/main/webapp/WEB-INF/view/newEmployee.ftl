<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>
<body>
	<form action="action_page.php">
		<fieldset>
			<legend>Employee Details:</legend>
			Forename:<br> <input type="text" name="forename" value=""> <br>
			Surname:<br> <input type="text" name="surname" value=""> <br>
			Salary:<br> <input type="number" min="0.01" step="0.01" max="999999999.99" value=""><br>
			Date of Birth:<br><input type="date" value=""><br>
			<span style = "color:red">${msg}</span><br>
			<input type="submit" value="Submit">  <input type="submit" value="Back">
		</fieldset>
	</form>
</body>
</html>