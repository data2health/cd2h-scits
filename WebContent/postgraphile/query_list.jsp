<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
    <jsp:param name="title" value="CD2H API" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="../header.jsp" flush="true" />

    <div class="container pl-0 pr-0">
        <br /> <br />
        <div class="container-fluid">
        <h3><a href="graphiql.jsp">Postgraphile Interface to CD2H data</a></h3>
        <p>Try the following query, which walks the list of projects, returning the title, thematic area and persons involved for each project.</p>
<sql:query var="domains" dataSource="jdbc/labs">
    select name,service,description,query from graphql.query;
</sql:query>

    <table>
    <tr><th>Name</th><th>Server</th><th>Description</th><th>Query</th></tr>
    <c:forEach items="${domains.rows}" var="row" varStatus="rowCounter">
        <tr><td>${row.name}</td><td>${row.service}</td><td>${row.description}</td><td><pre>${row.query}</pre></td></tr>
    </c:forEach>
    </table>
        <p><i>More documentation coming soon!</i></p>
        </div>
        <jsp:include page="../footer.jsp" flush="true" />
        </div>
</body>

</html>
