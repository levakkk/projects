<?php
require_once "config.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST['ime']) && isset($_POST['klasa']) && isset($_POST['link_gd']) && isset($_POST['link_gt']) && isset($_POST['link_moj']) && isset($_POST['link_yt'])) {

        $sql = "INSERT INTO klase (ime, klasa, link_gd, link_gt, link_moj, link_yt) VALUES (?,?,?,?,?,?)";
        if ($stmt = $link->prepare($sql)) {
            $stmt->bind_param("ssssss", $_POST['ime'], $_POST['klasa'], $_POST['link_gd'], $_POST['link_gt'], $_POST['link_moj'], $_POST['link_yt']);
            if ($stmt->execute()) {
                header("location: index.php");
                exit();
            } else {
                echo "Greška! Pogrešan unos.";
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
    <title>Dodaj novog lika</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                    <h2>Dodaj novog lika</h2>
                </div>
                <p>Dodavanje u bazu</p>
                <form action="<?php echo $_SERVER["PHP_SELF"] ?>" method="post">
                    <div class="form-group">
                        <label>Ime</label>
                        <input type="text" name="ime" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Klasa</label>
                        <textarea name="klasa" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Link Grim Dawn</label>
                        <input type="text" name="link_gd" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Link Grim Tools</label>
                        <input type="text" name="link_gt" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Link Moj</label>
                        <input type="text" name="link_moj" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Link YouTube</label>
                        <input type="text" name="link_yt" class="form-control" required>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Spremi">
                    <a href="index.php" class="btn btn-default">Poništi</a>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>