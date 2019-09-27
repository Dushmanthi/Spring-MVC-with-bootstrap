<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="WEB-INF/views/fragments/htmlhead.jsp" />
<!doctype html>
<html lang="en">
<head>

</head>
  <body>
  <jsp:include page="WEB-INF/views/fragments/topnav.jsp" /> 

    <div class="container-fluid">
      <div class="row">
        
 <jsp:include page="WEB-INF/views/fragments/sidebar.jsp" /> 
 
      <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Dashboard</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button>
            </div>
          </div>

          <canvas class="my-4" id="myChart" width="900" height="380"></canvas>

          </div>
        </main>
      </div>
    </div> 

  <jsp:include page="WEB-INF/views/fragments/footer.jsp" />
   
  </body>
</html>