
<?php
class Search {
     function alphabet() {
      echo "<p id='slova'>";       
           foreach (range('A', 'Z') as $char) {
           echo  "<a id='slova2' href='index.php?slovo=$char'>[ $char ]</a>"." ";
           }          
      echo "</p>";        
    }        
}                                

require 'mydb.php';

class Movie {
    
    private $db;
    
    public function Home(){
        $this->db = new MyDb();
        
if (isset($_GET['slovo'])) {
        $slovo = $_GET['slovo'];
              $result = $this->db->query("SELECT * FROM filmovi WHERE naslov LIKE '{$slovo}%'");   
                    while ($row = $result->fetch_assoc()){      
                    echo "<div class='pregled' >"
                         ."<img src='".$row['slika']."'  width='150' height='215'><br/>"
                         .$row['naslov']." (".$row['godina'].")<br/>"
                         ."Trajanje: ".$row['trajanje']." min"
                         ."</div>";               
                        }      
     }
      else {
        $result = $this->db->query("SELECT * FROM filmovi");       
            while ($row = $result->fetch_assoc()){
                    echo "<div class='pregled' >"
                         ."<img src='".$row['slika']."'  width='150' height='215'><br/>"
                         . $row['naslov']." (".$row['godina'].")<br/>"
                         . "Trajanje: ".$row['trajanje']." min"
                         . "</div>";                  
                }            
      }
   }
}


class Data {
    
    private $db;
    
    public function __construct(){
        $this->db = new MyDb();
 echo  "<form action='' method='POST' enctype='multipart/form-data' style='margin-left: 35%; margin-top: 5%;'>"
            ."<table class='table table-dark' border='1'  style='width: 25%; background-color: rgba(0, 0, 0, 0.8);'>"
            ."<tr>"
                ."<th>Naslov:</th>"
                ."<th><input id='tablica' type='text' name='naslov'></th>"               
            ."</tr>"
            
            ."<tr>"
            ."<th>Žanr:</th>"
                ."<th><select id='tablica' name='zanr'>"
                    ."<option value=''>--- Odaberite žanr ---</option>";
                        
                            $result = $this->db->query("SELECT * FROM zanr");
                            $polje_zanr = array();
                        
                        while ($row = $result->fetch_assoc()){
                            echo'<option value="'.$row['naziv'].'">'.$row['naziv'].'</option>';                           
                            $polje_zanr[$row['id']] = $row['naziv'];
                        }
                                             
             echo   "</select></th>"
                     ."</tr>";
            
            echo "<tr>"
            ."<th>Godina:</th>"
            ."<th>" 
            ."<select id='tablica' name='godina'>"
            ."<option value=''>--- Select ---</option>";
            
                 for ($x=date("Y"); $x>1900; $x--){
                     echo'<option value="'.$x.'">'.$x.'</option>'; 
                    } 
             
            echo "</select></th>"
            ."</tr>";
            
            echo "<tr>"
            ."<th>Trajanje:</th>"
            ."<th><input id='tablica' type='text' name='trajanje'></th>"
            ."</tr>"
            
            ."<tr>"
            ."<th>Slika:</th>"
            ."<th><input id='tablica' type='file' name='slika'></th>"
            ."</tr>"
            
            ."</table>"
            ."<br/>"
            ."<input type='submit' name='submit' value='Unos'>"
        ."</form><br/><br/><br/>";
        
    echo "<table  style='position: relative; bottom: 310px; left: 380px; font-size: 20px;'>";                                           
      if (isset($_POST['submit'])) {
            $br = 0;
            $array = array('naslov', 'zanr', 'godina', 'trajanje');
            $allowed = array('gif', 'png', 'jpg', 'jpeg');
            foreach ($array as $value){
            if (empty($_POST[$value]) || !isset($_POST[$value])){
                echo "<tr><td>Polje ".$value." je prazno.</td></tr>";
                echo "<br/>";
                $br += 1;
            }
            elseif (TRUE) {
                echo "<tr><td><br/></td></tr>";
            }
            }
            
            if (ctype_alnum($_POST['naslov']) == FALSE && (strlen($_POST['naslov'])>50)) {
                echo "<tr><td>Pogreška kod unosa naslova.</td></tr>";
                $br += 1;
                     }
                     
            if (ctype_digit($_POST['trajanje']) == FALSE && (strlen($_POST['trajanje'])>3)){
                echo "<tr><td>Pogreška kod unosa trajanja.</td></tr>";
                $br += 1;
               
                
            }    
            
           if (empty($_FILES['slika']['name'])) {
               echo "<tr><td>Niste odabrali sliku.<td></tr>";
               $br += 1;
           }  
          else {  
          $targetDir = "Slike/";
          $fileName = ($_FILES["slika"]["name"]);
          $targetFilePath = $targetDir . $fileName;
          $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
          
          if (!in_array($fileType, $allowed)){
              echo "<tr><td>Slika mora biti u gif, png, jpg ili jpeg formatu.</td></tr>";
              $br += 1;
          }
          }
            
         }
      if (isset($br) && $br == 0 && isset($_POST['submit'])) { 
         
          $naslov = strip_tags($_POST['naslov']);
          $zanr = $_POST['zanr'];
          $idZanr = array_search($zanr, $polje_zanr);
          $godina = $_POST['godina'];
          $trajanje = strip_tags($_POST['trajanje']);   
          
          $targetDir = "Slike/";
          $fileName = ($_FILES["slika"]["name"]);
          $targetFilePath = $targetDir . $fileName;
          $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);         
                  
            if(move_uploaded_file($_FILES['slika']['tmp_name'], $targetFilePath)){              
                $result = $this->db->query("INSERT INTO filmovi (naslov, id_zanr, godina, trajanje, slika)
                        VALUES ('".$naslov."','".$idZanr."','".$godina."','".$trajanje."','".$targetFilePath."')");
               
                    if($result !== FALSE){                
                    echo "Uspješno uneseno."; //header('Location: unos.php');    
                    }
                    else{
                    echo "Dodavanje filma nije uspjelo.";
                    } 
                 }   
              
         }
         echo "</table>";
                         
      }
                                                                             

    public function Table(){
        echo "<table class='table table-dark' border='1' width='50%' align='center'>"
            ."<tr>"
                ."<th>Slika</th><th>Naslov filma</th><th>Godina</th>"
                ."<th>Trajanje</th><th>Akcija</th>"
            ."</tr>";
            $result = $this->db->query("SELECT * FROM filmovi");
            while($row = $result->fetch_assoc()){
                echo "<tr>"
                        ."<td><img src='".$row['slika']."' width='30%';/></td>"
                        ."<td>".$row['naslov']."</td>"
                        ."<td>".$row['godina']."</td>"
                        ."<td>".$row['trajanje']." min"."</td>"
                        ."<td><a href='obrisi.php?film=".$row['id']."'>Obriši</td>"
                    ."</tr>";
                }
            "</table>";
    }
}

?>       


