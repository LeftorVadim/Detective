<%@ page import="detective.StartServlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <title>Title</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>Наверняка на месте преступления остались какие-нибудь улики, думаю нам стоит осмотреть тут всё как следует...</p></div>
<form action="/startServlet" method="post">
    <input type="submit" name="accept" value="Собрать улики">
    <input type="submit" name="refuse" value="Не собирать">
</form>
<%
    String name = (String) session.getAttribute("name");
    String amountOfClue = (String) session.getAttribute("amountOfClue");
    String amount =  new StartServlet().checkPressedButton(request, amountOfClue);
    session.setAttribute("amountOfClue", amount);
%>

<div class="statistic">
        <%="Имя: " + name%>
    <br>
        <%="Количество улик " + amount%>
    <div/>

</body>
</html>
