<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="fragments/htmlhead.jsp" />
<jsp:include page="fragments/topnav.jsp" />


<div class="container-fluid">
	<div class="row">

		<jsp:include page="fragments/sidebar.jsp" />
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

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
								
								<p class="list-group-item-text">Go to Project list to see full project list  </p>
						</a></li>
					
					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12 well ">

						<h1>Project Successfully updated ! </h1>

						
					</div>
				</div>
			</div>

		</div>

 </main>
	</div>
</div>

<jsp:include page="fragments/footer.jsp" />
