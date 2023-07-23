<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="detective.StartServlet" %>

<html>
<head>
    <title>Title</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>Стоит снять отпечатки с найденных улик</p></div>
<form action="witness.jsp" method="post">
    <input type="submit" name="accept" value="Снять отпечатки пальцев">
    <input type="submit" name="refuse" value="Не снимать">
</form>
<%
    String name = (String) session.getAttribute("name");
    String amountOfClue = (String) session.getAttribute("amountOfClue");
    String amount =  new StartServlet().checkPressedButton(request, amountOfClue);
    session.setAttribute("amountOfClue", amount);

%>
<%="Имя: " + name%>
<br>
<%="Количество улик " + amount%>

</body>
</html>
