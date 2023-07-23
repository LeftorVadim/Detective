<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="detective.StartServlet" %>

<html>
<head>
    <title>Title</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>Собрав вместе полученную информацию, думаю, у нас есть подозреваемый...</p></div>
<form action="/finishServlet" method="post">
    <input type="submit" name="accept" value="Задержать подозреваемого">
    <input type="submit" name="refuse" value="Не задерживать">
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