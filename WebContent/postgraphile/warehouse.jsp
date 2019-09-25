<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


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
			<c:choose>
				<c:when test="${empty param.schema and empty param.table }">
                    <h3>CD2H SciTS Schemas</h3>
					<sql:query var="schemas" dataSource="jdbc/labs">
						SELECT n.nspname AS name, pg_catalog.obj_description(n.oid,'pg_namespace') AS description
						FROM pg_catalog.pg_namespace n
						WHERE
						    n.nspname !~ '^pg_'
						AND n.nspname <> 'information_schema'
						ORDER BY 1;
                    </sql:query>

					<table>
						<tr>
							<th>Name</th>
							<th>Description</th>
						</tr>
						<c:forEach items="${schemas.rows}" var="row" varStatus="rowCounter">
							<tr>
								<td><a href="warehouse.jsp?schema=${row.name}">${row.name}</a></td>
								<td>${row.description}</td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
                <c:when test="${not empty param.schema and empty param.table }">
                   <h3>CD2H SciTS Schema: ${param.schema}</h3>
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
						  AND n.nspname <> 'pg_catalog'
						  AND n.nspname <> 'information_schema'
						  AND n.nspname !~ '^pg_toast'
						  AND n.nspname = ?
						ORDER BY 1,2;
						<sql:param>${param.schema}</sql:param>
                   </sql:query>

                    <table>
                        <tr>
                            <th>Relation</th>
                            <th>Size</th>
                            <th>Description</th>
                        </tr>
                        <c:forEach items="${tables.rows}" var="row"
                            varStatus="rowCounter">
                            <tr>
                                <td><a href="warehouse.jsp?schema=${param.schema}&table=${row.relation}">${row.relation}</a></td>
                                <td>${row.size}</td>
                                <td>${row.description}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:when>
                <c:when test="${not empty param.schema and not empty param.table }">
                    <h3>CD2H SciTS Schema: ${param.schema} > Table: ${param.table}</h3>
                    <sql:query var="columns" dataSource="jdbc/labs">
						SELECT
						    c.ordinal_position,
						    c.column_name,
						    c.data_type,
						    pgd.description
						from pg_catalog.pg_statio_all_tables as st
						inner join pg_catalog.pg_description pgd on (pgd.objoid=st.relid)
						right outer join information_schema.columns c
						  on (pgd.objsubid=c.ordinal_position and c.table_schema=st.schemaname and c.table_name=st.relname)
						where table_schema = ?
						 and table_name = ?
						order by c.ordinal_position;
						<sql:param>${param.schema}</sql:param>
						<sql:param>${param.table}</sql:param>
                    </sql:query>

                    <table>
                        <tr>
                            <th>Column</th>
                            <th>Data Type</th>
                            <th>Description</th>
                        </tr>
                        <c:forEach items="${columns.rows}" var="row"
                            varStatus="rowCounter">
                            <tr>
                                <td>${row.column_name}</td>
                                <td>${row.data_type}</td>
                                <td>${row.description}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:when>
			</c:choose>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>

</html>
