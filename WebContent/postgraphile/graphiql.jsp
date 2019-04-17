<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
    <jsp:param name="title" value="CD2H Labs" />
</jsp:include>

<style type="text/css" media="all">
@import "../resources/layout.css";

</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="../header.jsp" flush="true" />

        <iframe id="graph"
            title="Inline Frame Example"
            width="100%"
            height="500px"
            src="http://localhost:5000/graphiql">
        </iframe>

    <jsp:include page="../footer.jsp" flush="true" />
    
</body>

</html>
