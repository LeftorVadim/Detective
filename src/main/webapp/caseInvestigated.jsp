<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <title>Title</title>
    <link href="static/my.css" rel="stylesheet">
</head>
<body>
<div class="block"><p>
    Поздравляю! У нас было достаточно доказательств чтобы привлечь этого негодяя к ответственности, надеюсь теперь на улицах станет чуть спокойнее.
</p></div>
<img alt="Радостный Гарольд" class="garold" src="static/funnyGarold.png">
<br>
<script>
    function restart() {
       window.location.replace("/index.jsp")
    }
</script>
<div class="block">
    <button onclick="restart()">Взяться за новое дело</button>
</div>
</body>
</html>
