<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>gar-search-auto1.php</title>
    <link rel="stylesheet" type="text/css" href="../garage.scss">
</head>
<body>
<h1>Garage Zoek Op Auto 1</h1>
<p>
    Dit formulier zoek een klant op uit
    de tabel klanten van database garage.
</p>
<form action="gar-search-auto2.php" method="post">
    Welke auto zoekt u?<br/>
    <input type="text" name="klantid" placeholder="Autokenteken"><br/>
    <input type="submit">
</form>
</body>
</html>
