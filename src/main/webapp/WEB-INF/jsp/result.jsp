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
     <link href="<c:url value="/vendor/DataTables/datatables.min.css" />" rel="stylesheet">
	   <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/vendor/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<script src="<c:url value="/vendor/DataTables/datatables.min.js" />"></script>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-light static-top">
      <div class="container">
        <a class="navbar-brand" href="<c:url value='/'/>">SPIDER</a>
      </div>
    </nav>

    <!-- Masthead -->
    <header class="masthead small text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
         
          <div class="col-md-10 col-lg-8 col-xl-7">
            <form:form action="search" method="post" id="searchForm">
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" id="linkAddress"  name="pageURI" value="${pageURI}" min="10" class="form-control form-control-lg" placeholder="Enter URL to fetch page details.">
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

    <!-- Icons Grid -->
    <section class="features-icons text-center">
      <div class="container">
       <jsp:include page="pageDetails.jsp"></jsp:include>
       	<div class="row">
				<div class="col-md-12 mg-top-30">
					<h4 class="text-left green">Hyperlink-Details</h4>
					<h5 class="mg-top-10  mg-bottom-10 text-left"><b>External Link Count: </b>${documentDetails.countExternalLinks} | <b>Internal Link Count: </b>${documentDetails.countInternalLinks} | <b>Total Link Count: </b>${documentDetails.countInternalLinks+documentDetails.countExternalLinks}</h5>
					<div id="linkDetailsDiv">
						<jsp:include page="linkDetails.jsp"></jsp:include>
					</div>
				</div>
			</div>
	   
		</div>
    </section>

 

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
      
            <p class="text-muted small mb-4 mb-lg-0">&copy; SPIDER. All Rights Reserved.</p>
          </div>
        
        </div>
      </div>
    </footer>
 <script>
    (function() {
      var docId='${documentDetails.id}';
      var counter=0;
      var  poll = function() {
    	  	++counter;
    	  
          $.ajax({
            url: '<c:url value="/checkIfCompleted"/>',
            data:{docId:docId,counter:counter},
            type: 'GET',
            success: function(data) { 
             console.log('docId='+docId);
             fetchLinkDetails(docId);
             
              if (data) {
            	  counter=0;
            	   //fetchLinkDetails(docId);
                clearInterval(pollInterval); 
              }
            },
            error: function() { 
              console.log('Error!');
            }
          });
        },
        pollInterval = setInterval(function() { 
          poll();
          }, 5000);
        poll();
        
        $('#btnSearch').on('click',function(){
        		var uriString =	$('#linkAddress').val();
        	
        		if(uriString!=null && uriString!=''){
        			$('#searchForm').submit();
        		}
        		
        });
        
	        
    })();
    
    function fetchLinkDetails(docId){
    		 $.ajax({
             url: '<c:url value="/refreshLinks"/>',
             data:{docId:docId},
             type: 'GET',
             success: function(data) { 
            	 
            	 $("#linkDetailsDiv").html(data);
            		 
             	// $("#linkTable").DataTable();
             },
             error: function() { 
               console.log('Error!');
             }
           });
    }
    
   
    
  </script>
</body>

</html>