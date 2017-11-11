<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style><%@include file="../../resources/css/style.css"%></style>
<html lang="en">
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="../../resources/css/style.css" type="text/css"/>
</head>
<body>

<h1>ON-LINE SHOP</h1>

    <form:form modelAttribute="searchForm">
        <form:input path="searchText" />
        <input type="submit" value="Search" />
    </form:form>

    <ul>
    <c:forEach items="${products}" var="prod">
        <li>${prod.title}</li>
    </c:forEach>
    </ul>

</body>
</html>
