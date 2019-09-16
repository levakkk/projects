<?php
    require('db.php');
    $id=$_REQUEST['id'];
    $query = "DELETE FROM novi_upis WHERE id=$id"; 
    $result = mysqli_query($con,$query) or die ( mysqli_error());
    header("Lokacija: view.php");
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Dodaj novi unos</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div class="form">
            <p>
            <a href="dashboard.php">Upravljačka ploča</a> 
            | <a href="view.php">Pregled Unosa</a> 
            | <a href="logout.php">Odjava</a>
            </p>
    </div>
</body>
</html>