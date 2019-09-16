<?php
require_once "config.php";

if (isset($_GET['id'])) {
    $sql = "SELECT * FROM klase WHERE id = ?";
    if ($stmt = $link->prepare($sql)) {
        $stmt->bind_param("i", $_GET["id"]);
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows == 1) {
                $row = $result->fetch_array(MYSQLI_ASSOC);

                $param_ime = $row["ime"];
                $param_klasa = $row["klasa"];
                $param_link_gd = $row["link_gd"];
                $param_link_gt = $row["link_gt"];
                $param_link_moj = $row["link_moj"];
                $param_link_yt = $row["link_yt"];
            } else {
                echo "Greška, probajte ponovno.";
                exit();
            }
        } else {
            echo "Greška, probajte ponovno.";
            exit();
        }
        $stmt->close();
    }
} else {
    header("location: index.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!empty($_POST["ime"]) && !empty($_POST["klasa"]) && !empty($_POST["link_gd"]) && !empty($_POST["link_gt"]) && !empty($_POST["link_moj"]) && !empty($_POST["link_yt"])) {

        $sql = "UPDATE klase SET ime = ?, klasa = ?, link_gd = ?, link_gt = ?, link_moj = ?, link_yt = ? WHERE id = ?";
        if ($stmt = $link->prepare($sql)) {

            $stmt->bind_param("sssssss", $_POST['ime'], $_POST['klasa'], $_POST['link_gd'], $_POST['link_gt'], $_POST['link_moj'], $_POST['link_yt'], $_GET["id"]);
            $stmt->execute();
            if ($stmt->error) {
                echo "Greška!" . $stmt->error;
                exit();
            } else {
                header("location: index.php");
                exit();
            }
            $stmt->close();
        }
    }
    $link->close();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ažuriranje likova</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        label{
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               <div class="card" style="margin-top:20px;">
                   <div class="card-body">
                       <div class="page-header">
                           <h2>Ažuriranje Likova</h2>
                       </div>
                       <p>Ažuriranje informacija o likovima.</p>
                       <form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
                           <div class="form-group">
                               <label>Ime</label>
                               <input type="text" name="ime" class="form-control" required value="<?php echo $param_ime; ?>">
                           </div>
                           <div class="form-group">
                               <label>Klasa</label>
                               <textarea name="klasa" class="form-control" required ><?php echo $param_klasa; ?></textarea>
                           </div>
                           <div class="form-group">
                               <label>Link Grim Dawn Forums</label>
                               <input type="text" name="link_gd" class="form-control" value="<?php echo $param_link_gd; ?>" required>
                           </div>
                           <div class="form-group">
                               <label>Link GrimTools</label>
                               <input type="text" name="link_gt" class="form-control" value="<?php echo $param_link_gt; ?>" required>
                           </div>
                           <div class="form-group">
                               <label>Link GrimTools Moj</label>
                               <input type="text" name="link_moj" class="form-control" value="<?php echo $param_link_moj; ?>" required>
                           </div>
                           <div class="form-group">
                               <label>Link YouTube</label>
                               <input type="text" name="link_yt" class="form-control" value="<?php echo $param_link_yt; ?>" required>
                           </div>
                           <input type="submit" class="btn btn-primary" value="Ažuriraj">
                           <a href="index.php" class="btn btn-default">Poništi</a>
                       </form>
                   </div>
               </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
