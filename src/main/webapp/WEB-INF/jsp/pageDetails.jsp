<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<div class="col-md-12 mg-top-20">
		<h5 class="text-left">
			<b class="green">HTML version:</b> ${documentDetails.htmlVersion}
		</h5>
		<h5 class="text-left">
			<b class="green">Page Title:</b> ${documentDetails.pageTitle}
		</h5>
		<h5 class="text-left">
			<b class="green">Has Login Form:</b>
			<c:if test="${documentDetails.hasLoginForm}">
  Yes
  </c:if>
			<c:if test="${!documentDetails.hasLoginForm}">
  No
  </c:if>
		</h5>
	</div>
</div>
<div class="row">
	<div class="col-md-12 mg-top-30">
		<h4 class="text-left green">Heading Levels</h4>
		<table class="table mg-top-10">
			<thead>
				<tr>
					<th>h1</th>
					<th>h2</th>
					<th>h3</th>
					<th>h4</th>
					<th>h5</th>
					<th>h6</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${documentDetails.h1}</td>
					<td>${documentDetails.h2}</td>
					<td>${documentDetails.h3}</td>
					<td>${documentDetails.h4}</td>
					<td>${documentDetails.h5}</td>
					<td>${documentDetails.h6}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>