<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
	<jsp:param name="title" value="SciTS API" />
</jsp:include>
<style type="text/css" media="all">
@import "resources/layout.css";

.index-icon{
    text-align:center;
    color:grey;
    opacity: 0.7;
}

.ml12, .ml13, .ml14{
  font-weight: 200;
  font-size: 1.5em;
  text-transform: uppercase;
  letter-spacing: 0.5em;
  padding-bottom: 10px;
}

.ml12 .letter, .ml13 .letter, .ml14 .letter{
  display: inline-block;
  line-height: 1em;
}

.card{
	background-color: transparent;
	background-image: linear-gradient(to bottom right, white, #dbdbdb);
	margin-bottom: 10px;
	max-width: 350px;
	min-width: 300px;
	margin-right: 5px;
	margin-left: 5px;
}

.custom-card .card:hover{
	transform: scale(1.05);
}

.custom-card{
	text-decoration:none!important;
}

.card-title{
	color: #172859 !important;
}

.card-text{
	color: black;
	padding:0;
	font-size:10pt;
}

</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<div class="container-fluid mt-4">
			<c:choose>
				<c:when test="${empty guid}">
					<p><a href="http://guardian.slis.uiowa.edu:8080/scits/login.jsp">Login</a> <i>(Note! This warps you around labs.cd2h.org to the underlying Tomcat container.)</i></p>
				</c:when>
				<c:otherwise>
					User: ${guid} [<a href="logout.jsp">logout</a>]
				</c:otherwise>
			</c:choose>
			<h2>CD2H SciTS APIs</h2>
			<p>Any user or Hub can connect to and query the data behind the SciTS tools. This is done by providing a GraphQL-based API to allow direct access to our underlying data. More information on the language can be found <a href="https://graphql.org/">here</a>.</p>
		</div>
	</div>
	
	<div class="section" id="uses_start" style="background-image:url('<util:applicationRoot/>/images/graphql.png'),url('<util:applicationRoot/>/images/graphql.png'); background-position: left, right; background-size: auto 100%; background-repeat: no-repeat; padding-bottom: 30px; padding-top: 5px;">
		<div class="container pl-0 pr-0 pt-0">
			<div class="container-fluid mt-4" style="text-align: center;">
				<h3 class="ml12" style="text-align: center;">Explore and connect:</h3>
				<div class="row justify-content-center custom_cards">
					<div class="col-auto-4">
						<a href="postgraphile/graphiql.jsp" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">GraphIQL user interface</h5>
			      					<p class="card-text">Utilize our GraphIQL interface to access and explore all of the data in the SciTS data warehouse.</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="postgraphile/query_list.jsp" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">Query Examples</h5>
			      					<p class="card-text">Explore example queries that work with our GraphIQL interface and see what you can do.<br><br></p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="postgraphile/warehouse.jsp" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">Schema Explorer</h5>
			      					<p class="card-text">Browse through all of the schemas, tables, and variables within the SciTS data warehouse.<br><br></p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
 				</div>
 				<img src="<util:applicationRoot/>/images/graphql.png" class="img-fluid" alt="Responsive image" style="width:20%; height:auto; opacity:0.8;">
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>

</html>
