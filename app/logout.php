<?php
session_start();

if(session_destroy())
{

header("Lokacija: login.php");
}
?>