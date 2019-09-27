<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="fragments/htmlhead.jsp" />
<jsp:include page="fragments/topnav.jsp" />

<div class="container-fluid">
	<div class="row">

		<jsp:include page="fragments/sidebar.jsp" />
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Project List</h1>

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
								
								<p class="list-group-item-text">All Project Details</p>
						</a></li>

					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12 well ">

						<table border="2" width="100%" id="projectTable" >
							<thead>
								<tr>
									<th>Project Name</th>
									<th>Project Description</th>
								</tr>



							</thead>
							<tbody>
								<c:forEach items="${projectList}" var="project">

									<tr>
										<td><c:out value="${project.projectName}" /></td>
										<td><c:out value="${project.projectDescription}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>



					</div>
				</div>
			</div>

		</div>



		</main>
	</div>
</div>

<jsp:include page="fragments/footer.jsp" />
