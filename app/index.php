<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<?php

    include("auth.php");

?>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Aplikacija</title>
        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
        <div class="form">
            <p>Dobrodošli <?php echo $_SESSION['username']; ?>!</p>
            <p>Ovo je sigurna poveznica.</p>
            <p><a href="dashboard.php">Upravljačka ploča</a></p>
            <a href="logout.php">Odjava</a>
        </div>
    </body>
</html>
