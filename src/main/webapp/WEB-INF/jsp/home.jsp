<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
	<title>Home</title>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/vendor/font-awesome/css/font-awesome.css" />"  rel="stylesheet" type="text/css">
    <link href="<c:url value="/vendor/simple-line-icons/css/simple-line-icons.css" />" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    
        <!-- Custom styles for this template -->
    <link href="<c:url value="/css/landing-page.css" />" rel="stylesheet">
	
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-light static-top">
      <div class="container">
        <a class="navbar-brand" href="<c:url value='/'/>">SPIDER</a>
      </div>
    </nav>

    <!-- Masthead -->
    <header class="masthead text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
         
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form:form action="search" method="post" id="searchForm">
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" id="linkAddress"  name="pageURI" class="form-control form-control-lg" placeholder="Enter URL to fetch page details.">
                </div>
                <div class="col-12 col-md-3">
                  <button type="button" class="btn btn-block btn-lg btn-success" id="btnSearch">Search</button>
                </div>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </header>


 

    <!-- Footer -->
    <footer class="footer ">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
      
            <p class="text-muted small mb-4 mb-lg-0">&copy; SPIDER. All Rights Reserved.</p>
          </div>
        
        </div>
      </div>
    </footer>
   
   <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/vendor/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	 <script>
	
	   $(document).ready(function(){
		   $('#btnSearch').on('click',function(){
				var uriString =	$('#linkAddress').val();
			
				if(uriString!=null && uriString!=''){
					$('#searchForm').submit();
				}
				
			});
		});
	   
    </script>
</body>

</html>