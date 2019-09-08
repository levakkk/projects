<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet"  type="text/css"  href="CSS/dizajn.css">
    </head>
    <body>      
        <frameset cols="25%,*,25%">
  <frame src="frame_a.htm">
  <frame src="frame_b.htm">
  <frame src="frame_c.htm">
</frameset>
      <?php
        require 'Classes/class_page.php';
        $page = new Page();
        $page->Header();
    //    $page->Footer();
        
        require 'Classes/class_function.php';
        $alphabet = new Search();
        $alphabet->alphabet();
        $movie = new Movie(); 
        $movie->Home();
        ?>              
    </body>
</html>


 <!--<button  type="button"  onclick="document.getElementById('slova').innerHTML ='a'"> Pretraži</button>-->
