<?php

$con = mysqli_connect("localhost","root","","registracija");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Neuspješno spajanje na bazu: " . mysqli_connect_error();
  }
?>