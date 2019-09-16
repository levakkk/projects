<?php
require('db.php');
include("auth.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Pregled Unosa</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div class="form">
        <p><a href="index.php">Početna</a> 
        | <a href="insert.php">Dodaj novi unos</a> 
        | <a href="logout.php">Odjava</a></p>
    <h2>Pregled unosa</h2>
        <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>rbr</strong></th>
                    <th><strong>Ime</strong></th>
                    <th><strong>Godine</strong></th>
                    <th><strong>Ažuriraj</strong></th>
                    <th><strong>Izbriši</strong></th>
                </tr>
            </thead>
        <tbody>
        <?php
        $count=1;
        $sel_query="Select * from novi_upis ORDER BY id desc;";
        $result = mysqli_query($con,$sel_query);
        while($row = mysqli_fetch_assoc($result)) { ?>
        <tr><td align="center"><?php echo $count; ?></td>
            <td align="center"><?php echo $row["name"]; ?></td>
            <td align="center"><?php echo $row["age"]; ?></td>
            <td align="center">
            <a href="edit.php?id=<?php echo $row["id"]; ?>">Ažuriraj</a>
            </td>
            <td align="center">
            <a href="delete.php?id=<?php echo $row["id"]; ?>">Izbriši</a>
            </td>
        </tr>
        <?php $count++; } ?>
        </tbody>
        </table>
    </div>
</body>
</html>