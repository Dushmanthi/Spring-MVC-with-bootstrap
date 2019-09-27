<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="fragments/htmlhead.jsp" />
<jsp:include page="fragments/topnav.jsp" />


<div class="container-fluid">
	<div class="row">

		<jsp:include page="fragments/sidebar.jsp" />
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Create project</h1>

		</div>

		<!--  Multi step form starts here -->
		<link
			href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
			rel="stylesheet" id="bootstrap-css">
		<script
			src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>




		<div class="container">
			<div class="row form-group">
				<div class="col-xs-12">
					<ul class="nav nav-pills nav-justified thumbnail setup-panel">
						<li class="active"><a href="#step-1">
								<h4 class="list-group-item-heading">Step 1</h4>
								<p class="list-group-item-text">Project Details</p>
						</a></li>
					
					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12 well ">



						<form:form action="save" method="post" modelAttribute="project">
							<div class="form-group">
								<label >Project Name 
									<form:input path="projectName" id="projectName" class="form-control" />
									
									</label>
							</div>
							
							<div class="form-group">
								<label>Project Description
												
									<form:textarea path="projectDescription" id="projectDescription" class="col-md-12" rows ="3" />
									</label>
							</div>
							
							<input type='submit' value='save' class="btn btn-primary" /> 
						</form:form>
						
					</div>
				</div>
			</div>

		</div>

 </main>
	</div>
</div>

<jsp:include page="fragments/footer.jsp" />
<!--  ...........................
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="save" method="post" modelAttribute="project">
		Project Name : <input type="text" name="projectName" /><br>
		<br> Description: <input type="text"
			name="projectDescription" /><br>
		<br> <input type="submit" value="Save Data" />
	</form>
</body>
</html>-->