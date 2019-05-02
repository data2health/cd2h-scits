<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<c:if test="${empty guid and not pageContext.request.remoteHost == '0:0:0:0:0:0:0:1'}">
        <c:redirect url="query_list.jsp" />
</c:if>
<c:choose>
	<c:when test="${empty param.submit}">
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
			<h1>Edit Query</h1>
			<sql:query var="queries" dataSource="jdbc/labs">
                select name,service,description,query from graphql.query where name = ?;
                <sql:param>${param.name}</sql:param>
			</sql:query>
			<c:forEach items="${queries.rows}" var="row" varStatus="rowCounter">
				<form action="query_edit.jsp">
                    <input type="hidden" name="name" value="${param.name}">
					<table>
                        <tr>
                            <th align=left>Name</th>
                            <td><input type=text size=20 name=new_name  value="${row.name }"></td>
                        </tr>
                        <tr>
                            <th align=left>Service</th>
                            <td><input type=text size=20 name=service  value="${row.service }"></td>
                        </tr>
                        <tr>
                            <th align=left>Description</th>
                            <td><textarea rows=4 cols=80 name="description">${row.description }</textarea></td>
                        </tr>
						<tr>
							<th align=left>Query</th>
							<td><textarea rows=20 cols=80 name="query">${row.query }</textarea></td>
						</tr>
						<tr>
							<td><input type="submit" name="submit" value="Save">
								<input type="submit" name="submit" value="Cancel"></td>
						</tr>
					</table>
				</form>
			</c:forEach>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

		</html>
	</c:when>
	<c:when test="${param.submit == 'Cancel'}">
		<c:redirect url="query_list.jsp" />
	</c:when>
	<c:when test="${param.submit == 'Save'}">
        <sql:update dataSource="jdbc/labs">
            update graphql.query set name=?,service=?,description=?,query=? where name=?;
            <sql:param>${param.new_name}</sql:param>
            <sql:param>${param.service}</sql:param>
            <sql:param>${util:removeCRs(param.description)}</sql:param>
            <sql:param>${util:removeCRs(param.query)}</sql:param>
            <sql:param>${param.name}</sql:param>
        </sql:update>
        <c:redirect url="query_list.jsp" />
	</c:when>
	<c:otherwise>
        A task is required for this function.
    </c:otherwise>
</c:choose>
