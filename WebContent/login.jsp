<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang='en'>
<head>
<title>CD2H SciTS Login</title>
</head>
<body>
<c:import url="header.jsp" />
<c:choose>
    <c:when test="${empty param.uip_ticket}">
        <c:set var="referer" value="${header.referer}" scope="session" />
        <c:if test="${not empty param.source}">
            <c:set var="referer" value="${param.source}" scope="session" />
        </c:if>
        <c:set var="login_url" value="https://login.uiowa.edu/uip/login.page?service=http://guardian.slis.uiowa.edu:8080/scits/login.jsp" />
        <c:out value="${login_url}" />
        <c:redirect url="${login_url}" />
    </c:when>
    <c:otherwise>
        <c:out value="${param.uip_ticket}" />
        <%
            String user = null;
            Integer uid = null;

            URL theURL = new URL("https://login.uiowa.edu/uip/checkticket.page?uip_ticket="
                    + request.getParameter("uip_ticket"));
            BufferedReader IODesc = new BufferedReader(new InputStreamReader(theURL.openConnection().getInputStream()));
            String buffer = null;
            while ((buffer = IODesc.readLine()) != null) {
                System.out.println(buffer);
                if (buffer.startsWith("hawkid="))
                    user = buffer.substring(buffer.indexOf("=") + 1);
            }

            session.putValue("guid", user);
        %>
        <c:redirect url="http://guardian.slis.uiowa.edu:8080/scits" />
    </c:otherwise>
</c:choose>
</body>
</html>