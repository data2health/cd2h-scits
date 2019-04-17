<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
	<jsp:param name="title" value="CD2H Labs" />
</jsp:include>
<style type="text/css" media="all">
@import "resources/layout.css";

.index-icon{
    text-align:center;
    color:grey;
    opacity: 0.7;
}
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<div class="container-fluid mt-4">
			<h1>CD2H SciTS APIs</h1>
			<hr>
			<h4 style="text-align: center; font-weight: 400;">
				<i style="color: #6ba097;" class="fas fa-server"></i> Current Prototypes from Our Teams and Our Collaborators Include:
			</h4>
			<br>
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">PostGraphile</h5>
							<ul class="list-group">
								<li><a href="postgraphile/graphiql.jsp">GraphIQL user interface</a></li>
								<li><a href="postgraphile/query_list.jsp">CD2H Query Examples</a></li>
								<li><a href="postgraphile/warehouse.jsp">Schema Explorer</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
</body>

</html>
