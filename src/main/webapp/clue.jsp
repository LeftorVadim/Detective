<%@ page import="detective.StartServlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Clue</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>

<div class="block"><p>Наверняка на месте преступления остались какие-нибудь улики, думаю нам стоит осмотреть тут всё как
    следует...</p></div>
<form action="/calculatorClue.jsp" method="post">
    <input type="submit" name="accept" value="Собрать улики">
    <input type="submit" name="refuse" value="Не собирать">
</form>

<%
    String amountOfClue = (String) session.getAttribute("amountOfClue");
    String amount = new StartServlet().checkPressedButton(request, amountOfClue);
    session.setAttribute("amountOfClue", amount);
%>
<div class="block">
    <c:set var="name">name</c:set>
    <c:set var="amount">amountOfClue</c:set>
    <c:out value="Имя: ${sessionScope.get(name)}"></c:out>
    <br>
    <c:out value="Количество улик: ${sessionScope.get(amount)}"></c:out>
</div>

</body>
</html>
