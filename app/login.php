<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Prijava</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <?php
    require('db.php');
    session_start();
    
    if (isset($_POST['username'])){
            
     $username = stripslashes($_REQUEST['username']);
            
     $username = mysqli_real_escape_string($con,$username);
     $password = stripslashes($_REQUEST['password']);
     $password = mysqli_real_escape_string($con,$password);
     
            $query = "SELECT * FROM `korisnici` WHERE username='$username'
    and password='".md5($password)."'";
     $result = mysqli_query($con,$query) or die(mysql_error());
     $rows = mysqli_num_rows($result);
            if($rows==1){
         $_SESSION['username'] = $username;
                // Redirect user to index.php
         header("Lokacija: index.php");
             }else{
     echo "<div class='form'>
    <h3>Korisničko ime/lozinka je netočna.</h3>
    <br/>Kliknite ovdje za <a href='login.php'>prijavu</a></div>";
     }
        }else{
    ?>
<div class="form">
    <h1>Log In</h1>
        <form action="" method="post" name="login">
            <input type="text" name="username" placeholder="korisnicko ime" required />
            <input type="password" name="password" placeholder="lozinka" required />
            <input name="submit" type="submit" value="Prijava" />
        </form>
    <p>Ukoliko niste registrirani, registrirajte se <a href='register.php'>ovdje</a></p>
</div>
<?php } ?>
</body>
</html>