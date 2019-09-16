<?php
require_once "config.php";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $sql = "SELECT * FROM klase WHERE id = ?";
    if ($stmt = $link->prepare($sql)) {
        $stmt->bind_param("i", $_GET["id"]);
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows == 1) {
                $row = $result->fetch_array(MYSQLI_ASSOC);

                $ime = $row["ime"];
                $klasa = $row["klasa"];
                $link_gd = $row["link_gd"];
                $link_gt = $row["link_gt"];
                $link_moj = $row["link_moj"];
                $link_yt = $row["link_yt"];

            } else {
                echo "Greška, probajte ponovno.";
                exit();
            }

        } else {
            echo "Greška, probajte ponovno.";
            exit();
        }
    }
    $stmt->close();
    $link->close();
} else {
    echo "Greška, probajte ponovno.";
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pregled likova</title>
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
                <div class="card" style="margin-top: 20px;">
                    <div class="card-body">
                        <div class="page-header">
                            <h1>Pregled lika <?php echo "<br>", ">", $ime, " - ", $klasa, "<" ?></h1>
                        </div>
                        <div class="form-group">
                            <label >Ime</label>
                            <p class="form-control-static"><?php echo $ime; ?></p>
                        </div>
                        <div class="form-group">
                            <label>Klasa</label>
                            <p class="form-control-static"><?php echo $klasa; ?></p>
                        </div>
                        <div class="form-group">
                            <label>Link Grim Dawn Forums</label>
                            <p class="form-control-static"><?php echo $link_gd; ?></p>
                        </div>
                        <div class="form-group">
                            <label>Link GrimTools</label>
                            <p class="form-control-static"><?php echo $link_gt; ?></p>
                        </div>
                        <div class="form-group">
                            <label>Link GrimTools Moj</label>
                            <p class="form-control-static"><?php echo $link_moj; ?></p>
                        </div>
                        <div class="form-group">
                            <label>Link Youtube</label>
                            <p class="form-control-static"><?php echo $link_yt; ?></p>
                        </div>
                        <p><a href="index.php" class="btn btn-primary">Povratak</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>