<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Registreren Birdwacht</title>
</head>
<body>
<h1>Birdwacht Database Registreren</h1>
<form method="post" action="#">
    <label>Volledige Naam:</label> <input type="text" name="volledigenaam"><br/>
    <label>Username:</label> <input type="text" name="gebruikersnaam"><br/>
    <label>Password:</label> <input type="password" name="wachtwoord"><br/>
    <label>Email:</label> <input type="email" name="email"><br/>
    <label>Geboortedatum:</label> <input type="date" name="datum"><br/>
    <label>Adres (met nummer):</label> <input type="text" name="adreshuisnummer"><br/>
    <label>Postcode:</label> <input type="text" name="postcode"><br/>
    <label>Woonplaats:</label> <input type="text" name="woonplaats"><br/>
    <label>Land:</label> <input type="text" name="land"><br/>
    <label>Functie:</label> <input type="text" name="functie" value="guest" readonly><br/>

    <input type="submit" name="submit">
</form>
</body>
</html>
<?php
echo "<a href='./index.php'>Terug naar het menu.</a><br />";


if (isset($_POST['submit'])) {
    $land_input = $_POST["land"];
    $woonplaats_input = $_POST["woonplaats"];
    $postcode_input = $_POST["postcode"];
    $adresh_input = $_POST["adreshuisnummer"];
    $volledige_input = $_POST["volledigenaam"];
    $username_input = $_POST["gebruikersnaam"];
    $pass_input = $_POST["wachtwoord"];
    $email_input = $_POST["email"];
    $date_input = $_POST["datum"];
    $functie_input = $_POST["functie"];

} else {
    $functie_input = "";
    return;
}

require_once "./verified/gar-connect.php";



$db = $conn->prepare("
INSERT INTO users (volledigenaam, gebruikersnaam, email, geboortedatum, wachtwoord, adreshuisnummer, postcode, woonplaats, land, functie)
VALUES (:volledige, :username, :email, :geboortedatum, :password, :adresh, :postcode, :woonplaats, :land, :functie)
");

$db->bindParam(':postcode', $postcode_input);
$db->bindParam(':woonplaats', $woonplaats_input);
$db->bindParam(':land', $land_input);
$db->bindParam(':adresh', $adresh_input);
$db->bindParam(':volledige', $volledige_input);
$db->bindParam(':username', $username_input);
$db->bindParam(':password', $pass_input);
$db->bindParam(':email', $email_input);
$db->bindParam(':geboortedatum', $date_input);
$db->bindParam(':functie', $functie_input);


if (empty($username_input) || empty($pass_input) || empty($email_input)) {
    echo "Register failed<br />";
} else {
    $db->execute();
    echo "Registered successfully!<br />";
//    header("Location: ./login.php");
}
//$users = $db->fetch(PDO::FETCH_ASSOC);


?>