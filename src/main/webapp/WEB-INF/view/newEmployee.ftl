<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	   <meta charset="UTF-8">
	   <title>Add Employee</title>
	</head>
	<body>
	   <div class="container">
	       <h1>Add Employee</h1>
		   <nav class="navbar navbar-default">
	          <div class="container-fluid">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	               <ul class="nav navbar-nav">
	                 <li><a href="${rc.contextPath}/employees/list.html">List Employees <span class="sr-only">(current)</span></a></li>
	                 <li class="separator"></li>
	                 <li><a href="${rc.contextPath}/employees/add.html">Add Employee <span class="sr-only">(current)</span></a></li>
	               </ul>
	            </div><!-- /.navbar-collapse -->
	          </div><!-- /.container-fluid -->
	        </nav>
		    <ol class="breadcrumb">
		              <li><a href="${rc.contextPath}/">Home</a></li>
		              <li class="active">Add Employee</li>
		            </ol>
			<form action="newEmployee.html" method="POST">
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
		</div>
	</body>
</html>