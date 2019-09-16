<?php
require('db.php');
include("auth.php");
$status = "";
if(isset($_POST['new']) && $_POST['new']==1){
    $trn_date = date("Y-m-d H:i:s");
    $name =$_REQUEST['name'];
    $age = $_REQUEST['age'];
    $submittedby = $_SESSION["username"];
    $ins_query="insert into novi_upis
    (`trn_date`,`name`,`age`,`submittedby`)values
    ('$trn_date','$name','$age','$submittedby')";
    mysqli_query($con,$ins_query)
    or die(mysql_error());
    $status = "Uspješan unos.
    </br></br><a href='view.php'>Pregled Unosa</a>";
}
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
        <p><a href="dashboard.php">Upravljačka ploča</a> 
        | <a href="view.php">Pregled Unosa</a> 
        | <a href="logout.php">Odjava</a></p>
        <div>
        <h1>Dodaj novi unos</h1>
        <form name="form" method="post" action=""> 
            <input type="hidden" name="new" value="1" />
            <p><input type="text" name="name" placeholder="Unesi ime" required /></p>
            <p><input type="text" name="age" placeholder="Unesi godine" required /></p>
            <p><input name="submit" type="submit" value="Pošalji" /></p>
        </form>
            <p style="color:#FF0000;"><?php echo $status; ?></p>
        </div>
    </div>
</body>
</html>