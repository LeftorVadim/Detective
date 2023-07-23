<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="detective.StartServlet" %>

<html>
<head>
    <title>Title</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>Возможно кто то из этих зевак заметил что нибудь подозрительное. Как думаешь стоит их опросить?</p></div>
<form action="/suspect.jsp" method="post">
    <input type="submit" name="accept" value="Опросить свидетеля">
    <input type="submit" name="refuse" value="Не опрашивать">
</form>
<%
    String name = (String) session.getAttribute("name");
    String amountOfClue = (String) session.getAttribute("amountOfClue");
    String amount =  new StartServlet().checkPressedButton(request, amountOfClue);
    session.setAttribute("amountOfClue", amount);
%>
<%="Имя: " + name%>
<br>
<%="Количество улик: " + amount%>

</body>
</html>