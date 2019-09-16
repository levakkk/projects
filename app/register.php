<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Registracija</title>
  <link rel="stylesheet" href="css/style.css" />
</head>
<body>
  <?php
  require('db.php');

  if (isset($_REQUEST['username'])){

   $username = stripslashes($_REQUEST['username']);

   $username = mysqli_real_escape_string($con,$username);
   $email = stripslashes($_REQUEST['email']);
   $email = mysqli_real_escape_string($con,$email);
   $password = stripslashes($_REQUEST['password']);
   $password = mysqli_real_escape_string($con,$password);
   $trn_date = date("Y-m-d H:i:s");
          $query = "INSERT into `korisnici` (username, password, email, trn_date)
  VALUES ('$username', '".md5($password)."', '$email', '$trn_date')";
          $result = mysqli_query($con,$query);
          if($result){
              echo "<div class='form'>
  <h3>Registracija uspješna!</h3>
  <br/>Kliknite ovdje za <a href='login.php'>prijavu</a></div>";
          }
      }else{
  ?>
  <div class="form">
    <h1>Registracija</h1>
    <form name="registration" action="" method="post">
      <input type="text" name="username" placeholder="korisnicko ime" required />
      <input type="email" name="email" placeholder="email" required />
      <input type="password" name="password" placeholder="lozinka" required />
      <input type="submit" name="submit" value="Registriraj" />
    </form>
  </div>
  <?php } ?>
</body>
</html>
