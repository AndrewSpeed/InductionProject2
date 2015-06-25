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
		<title>${employee.forename} ${employee.surname}</title>
	</head>
	<body>
	   <div class="container">
	       <h1>${employee.forename} ${employee.surname} <small>Born on ${employee.dateOfBirth}</small></h1>
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
			  <li><a href="${rc.contextPath}/employees/list.html">Employees</a></li>
			  <li class="active">${employee.forename} ${employee.surname}</li>
			</ol>
			<#if employee.salary??>
		      <h2><span class="label label-primary">Salary:</span> £ ${employee.salary}</h2>
		    </#if>
		    <#if employee.commissionRate??>
              <h2><span class="label label-primary">Commission:</span> £ ${employee.commissionRate}</h2>
            </#if>
            <#if employee.salesTotal??>
              <h2><span class="label label-primary">Total sales:</span> £ ${employee.salesTotal}</h2>
            </#if>
	   </div>
	</body>
</html>