<?php
    require('db.php');
    include("auth.php");
    $id=$_REQUEST['id'];
    $query = "SELECT * from novi_upis where id='".$id."'"; 
    $result = mysqli_query($con, $query) or die ( mysqli_error());
    $row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Update Record</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div class="form">
        <p><a href="dashboard.php">Upravljačka ploča</a> 
        | <a href="insert.php">Dodaj novi unos</a> 
        | <a href="logout.php">Odjava</a></p>
        <h1>Ažuriraj unos</h1>
        <?php
        $status = "";
        if(isset($_POST['new']) && $_POST['new']==1)
        {
        $id=$_REQUEST['id'];
        $trn_date = date("Y-m-d H:i:s");
        $name =$_REQUEST['name'];
        $age =$_REQUEST['age'];
        $submittedby = $_SESSION["username"];
        $update="update novi_upis set trn_date='".$trn_date."',
        name='".$name."', age='".$age."',
        submittedby='".$submittedby."' where id='".$id."'";
        mysqli_query($con, $update) or die(mysqli_error());
        $status = "Uspješno ažurirano. </br></br>
        <a href='view.php'>Pregled unosa</a>";
        echo '<p style="color:#FF0000;">'.$status.'</p>';
        }else {
        ?>
        <div>
        <form name="form" method="post" action=""> 
        <input type="hidden" name="new" value="1" />
        <input name="id" type="hidden" value="<?php echo $row['id'];?>" />
        <p><input type="text" name="name" placeholder="Unesi ime" 
        required value="<?php echo $row['name'];?>" /></p>
        <p><input type="text" name="age" placeholder="Unesi godine" 
        required value="<?php echo $row['age'];?>" /></p>
        <p><input name="submit" type="submit" value="Ažuriraj" /></p>
        </form>
        <?php } ?>
        </div>
    </div>
</body>
</html>