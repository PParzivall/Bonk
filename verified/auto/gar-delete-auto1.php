<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>gar-delete-auto1.php</title>
    <link rel="stylesheet" type="text/css" href="../garage.scss">
</head>
<body>
<h1>Garage Delete Auto 1</h1>
<p>
    Dit formulier zoekt een auto op uit
    de tabel klanten van database garage
    om hem te kunnen verwijderen
</p>
<form action="gar-delete-auto2.php" method="post">
    Welk autokenteken wilt u verwijderen?
    <input type="text" name="autoidvak"> <br/>
    <input type="submit">
</form>
</body>
</html>
