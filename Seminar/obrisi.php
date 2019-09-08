<?php
include 'mydb.php';

$brisi = new Delete();

class Delete {
    
    private $db;
    
    public function __construct(){
        $this->db = new MyDb();

$film = $_GET['film'];
echo $film;
$upit = "DELETE FROM filmovi WHERE id = $film";
$result = $this->db->query($upit);
header('Location: unos.php');
    }
}
?>