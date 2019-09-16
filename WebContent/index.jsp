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
            <h1>CD2H Science of Translational Science (SciTS) Platform</h1>
		  <img alt="SciTS conceptual architecture" src="images/SciTS.jpg" width=100%>
			<h4 style="text-align: center; font-weight: 400;">
				<i style="color: #6ba097;" class="fas fa-server"></i> Current Prototypes from Our Teams and Our Collaborators Include:
			</h4>
			<br>
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title"><a href="http://labs.cd2h.org/search">CTSAsearch</a></h5>
							<p">Query SciTS data and use the resulting data in your local environment.</p>
						</div>
					</div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><a href="apis.jsp">SciTS APIs</a></h5>
                            <p">Query SciTS data and use the resulting data in your local environment.</p>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
</body>

</html>
