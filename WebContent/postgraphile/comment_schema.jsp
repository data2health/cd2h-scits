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
	<jsp:param name="title" value="SciTS API" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Edit Table Description for ${param.schema}.${param.table}</h1>
                    <sql:query var="tables" dataSource="jdbc/labs">
                        SELECT
                            c.relname as relation,
                            CASE c.relkind WHEN 'r' THEN 'table' WHEN 'v' THEN 'view' WHEN 'm' THEN 'materialized view'
                                WHEN 'i' THEN 'index' WHEN 'S' THEN 'sequence' WHEN 's' THEN 'special'
                                WHEN 'f' THEN 'foreign table' WHEN 'p' THEN 'table' WHEN 'I' THEN
                                'index' END as "Type",
                            pg_catalog.pg_size_pretty(pg_catalog.pg_table_size(c.oid)) as size,
                            pg_catalog.obj_description(c.oid, 'pg_class') as description
                        FROM pg_catalog.pg_class c
                        LEFT JOIN pg_catalog.pg_namespace n
                        ON n.oid = c.relnamespace
                        WHERE c.relkind IN ('r','p','v','m','S','f','')
                          AND n.nspname = ?
                          AND c.relname = ?
                        ORDER BY 1,2;
                        <sql:param>${param.schema}</sql:param>
                        <sql:param>${param.table}</sql:param>
			<c:forEach items="${tables.rows}" var="row" varStatus="rowCounter">
				<form action="comment_schema.jsp">
                    <input type="hidden" name="schema" value="${param.schema}">
                    <input type="hidden" name="table" value="${param.table}">
					<table>
                        <tr>
                            <th align=left>Description</th>
                            <td><textarea rows=4 cols=80 name="description">${row.description }</textarea></td>
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
		<c:redirect url="warehouse.jsp" />
	</c:when>
	<c:when test="${param.submit == 'Save'}">
        <sql:update dataSource="jdbc/labs">
            comment on schema ${param.schema} is '${param.description}';
        </sql:update>
        <c:redirect url="warehouse.jsp" />
	</c:when>
	<c:otherwise>
        A task is required for this function.
    </c:otherwise>
</c:choose>
