<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet"  type="text/css"  href="CSS/dizajn.css">
    </head>
    <body>        
        <?php
        require 'Classes/class_page.php';
        $page = new Page();
        $page->Header();
    //    $page->Footer();
                
       require 'Classes/class_function.php';
       $unos = new Data();
       $unos->Table();
        ?>   
    </body>
</html>