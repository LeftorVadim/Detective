<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="detective.StartServlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Calculator</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>На месте преступления был найдет калькулятор, стоит приобщить его к делу</p></div>
<form action="fingerprints.jsp" method="post">
    <input type="submit" name="accept" value="Приобщить">
    <input type="submit" name="refuse" value="Не надо">
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
