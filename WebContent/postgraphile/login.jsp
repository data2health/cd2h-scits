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

            <c:choose>
                <c:when test="${(empty login or login eq 'guest') and empty param.submit}">
                    <form action="login2.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <table border=0 align=left>
                                        <tr>
                                            <th align=left>Guest User ID:</th>
                                            <td><input type="text" name="login" size="20" value=""></td>
                                        </tr>
                                        <tr>
                                            <th align=left>Password</th>
                                            <td><input type="password" name="password" size="20" value=""></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="submit" name="submit" value="Login">
                                    <input type="submit" name="submit" value="Cancel"></td>
                            </tr>
                        </table>
                    </form>
                </c:when>
                <c:when test="${param.submit eq 'Cancel' }">
                    <c:redirect url="warehouse.jsp" />
                </c:when>
                <c:when test="${param.submit eq 'Login' }">
                    <c:if test="${param.login eq 'dave'}">${param.login }
                    <c:set var="login" scope="session" value="${param.login }" />
                    </c:if>
                    <c:redirect url="warehouse.jsp" />
                </c:when>
                <c:otherwise>
                    <c:redirect url="warehouse.jsp" />
                </c:otherwise>
            </c:choose>

    <jsp:include page="../footer.jsp" flush="true" />
    
</body>

</html>
