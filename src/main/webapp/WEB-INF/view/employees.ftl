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
<title>Employees</title>
</head>
<body>
    <div class="container">
        <h1>Employees</h1>
        <nav class="navbar navbar-default">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                </div>
            
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    List
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="${rc.contextPath}/employees/list.html">Employees</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
            <ol class="breadcrumb">
              <li><a href="${rc.contextPath}/">Home</a></li>
              <li class="active">Employees</li>
            </ol>
        <table class="table table-bordered table-hover">
        <tr>
            <th>ID</th>
            <th>Forename</th>
            <th>Surname</th>
			<th>Date of birth</th>
            <th>Salary</th>
        </tr>
        <#list employees as employee>
        <tr>
            <td><a href="${rc.contextPath}/employees/${employee.id}/details.html">${employee.id}</a></td>
            <td>${employee.forename}</td>
            <td>${employee.surname}</td>
			<td>${employee.dateOfBirth}</td>
            <td>£ ${employee.salary}</td>
        </tr>
        </#list>
        </table>
    </div>
</body>
</html>