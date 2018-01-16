<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.message-wrapper{
		word-break: break-word;
	}
</style>

<c:choose>
	<c:when test="${hyperMediaLinks!=null && hyperMediaLinks.size()>0}">

		<table class="table  table-sm table-striped" id="linkTable" style="max-height: 500px; overflow-y: sc">
			<thead>
				<tr>
					<th>S.no</th>
					<th>Link Address</th>
					<th>Link Type</th>
					<th>Status</th>
					<th>Message</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${hyperMediaLinks}" var="linkDetails"
					varStatus="counter">
					<tr>
						<td >${counter.index+1}</td>
						<td class="col-md-7 text-left message-wrapper">${linkDetails.linkAddress}</td>
						<td class="col-md-1">${linkDetails.linkType}</td>
						<c:if test="${linkDetails.status=='-1'}">
							<td class="col-md-1"><img alt="" src="<c:url value='/img/Spinner.gif'/>" /></td>
							<td class="col-md-2"><img alt="" src="<c:url value='/img/Spinner.gif'/>" /></td>
						</c:if>
						<c:if test="${linkDetails.status!='-1'}">
							<c:if test="${linkDetails.status==200}">
								<td class="col-md-1 text-success">${linkDetails.status}</td>
								<td class="col-md-2 text-success">${linkDetails.errorMessage}</td>
							
							</c:if>
							<c:if test="${linkDetails.status!=200}">
								<td class="col-md-1 text-danger">${linkDetails.status}</td>
								<td class="col-md-2 text-danger">${linkDetails.errorMessage}</td>
							</c:if>
						
							
							
							
						</c:if>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		<div class="alert alert-primary" role="alert">
		  No link found in this resource link!
		</div>
	</c:otherwise>
</c:choose>


<script>
	$(function() {
		// $("#linkTable").DataTable();
	});
</script>