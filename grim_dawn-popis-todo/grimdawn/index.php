<?php
require_once "config.php";
$sql = "SELECT * FROM klase";
$result = $link->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grim Dawn Kolekcija Likova</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .btn{
            margin-left: 10px;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card" style="margin-top: 20px;margin-bottom: 20px;">
                    <div class="card-body">
                        <h2 class="pull-left">Popis Likova <a href="create.php" class="btn btn-success pull-right">Dodaj novog lika</a><a href="http://localhost/za_napraviti/index.php" target="new" class="btn btn-success pull-right">To-do lista</a></h2>
                    </div>
                </div>
                <?php
                if ($result->num_rows > 0) {
                        echo "<table class='table table-bordered table-striped'>";
                        echo "<thead>";
                        echo "<tr>";
                        echo "<th>#</th>";
                        echo "<th>Ime</th>";
                        echo "<th>Klasa</th>";
                        echo "<th>Link Grim Dawn Forums</th>";
                        echo "<th>Link GrimTools</th>";
                        echo "<th>Link GrimTools Moj</th>";
                        echo "<th>Link YouTube</th>";
                        echo "<th>Opcije</th>";
                        echo "</tr>";
                        echo "</thead>";
                        echo "<tbody>";
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row['id'] . "</td>";
                            echo "<td>" . $row['ime'] . "</td>";
                            echo "<td>" . $row['klasa'] . "</td>";
                            echo "<td>" . $row['link_gd'] . "</td>";
                            echo "<td>" . $row['link_gt'] . "</td>";
                            echo "<td>" . $row['link_moj'] . "</td>";
                            echo "<td>" . $row['link_yt'] . "</td>";
                            echo "<td>";
                            echo "<a href='read.php?id=" . $row['id'] . "' class='btn btn-primary'>Pregled</a>";
                            echo "<a href='update.php?id=" . $row['id'] . "' class='btn btn-info'>Ažuriranje</a>";
                            echo "<a href='delete.php?id=" . $row['id'] . "' class='btn btn-danger'>Brisanje</a>";
                            echo "</td>";
                            echo "</tr>";
                        }
                        echo "</tbody>";
                        echo "</table>";
                        // Free result set
                        $result->free();
                    } else {
                        echo "<p class='lead'><em>Nema upisa.</em></p>";
                    }
                $link->close();
                ?>
            </div>
        </div>
    </div>
</div>
</body>
</html>