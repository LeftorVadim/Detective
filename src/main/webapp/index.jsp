<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <TITLE>WELCOME</TITLE>
    <link href="static/my.css" rel="stylesheet">
</head>

<body>
<div class="block"><p>
    Привет, напарник!
    Произошло страшное преступление, не знаю готов ли ты к такому!
    Сегодня с утра прямо на этом месте кто-то...пытался поделить на ноль!
    Всё начальство на ушах, меня освободили от всех дел, чтобы поскорее разобраться с этим.
    Кажется, мы стобой ещё не работали, я Гарольд...
</p></div>
<img alt="Гарольд" class="garold" src="static/Garold.jpg">

<form action=/startServlet" method="post">
    Имя: <input type="text" name="name">
    <label>
        <input hidden="hidden" name="amountOfClue" value="0">
    </label>
    <input type="submit" name="introduce" value="Представиться">
</form>
</body>
</html>
