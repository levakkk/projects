<?php
if (isset($_GET["id"]) && !empty($_GET["id"])) {

    require_once "config.php";
    $sql = "DELETE FROM klase WHERE id = ?";

    if ($stmt = $link->prepare($sql)) {
        $stmt->bind_param("i", $_GET["id"]);
        if ($stmt->execute()) {
            header("location: index.php");
            exit();
        } else {
            echo "Greška, probajte ponovno.";
        }
    }
    $stmt->close();
    $link->close();
} else {
    echo "Greška, probajte ponovno.";
}
?>