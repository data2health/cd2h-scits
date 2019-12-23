<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${param.login eq 'dave'}">
<c:set var="login" scope="session" value="${param.login}"/>
<c:redirect url="warehouse.jsp" />
</c:if>
<c:redirect url="warehouse.jsp" />
