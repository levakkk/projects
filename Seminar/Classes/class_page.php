<?php
class Page {
    public function Header(){
   echo  "<header>"
        //."<p id='logo'>Videoteka</p>"
        ."<nav class='navbar navbar-light bg-light'>"           
             ."<a class='navbar navbar-expand-lg navbar-light bg-light' href='index.php'>Početna</a>"
             ."<a id='izbor' href='unos.php'>Dodavanje filma</a>"                        
        ."</div>"
        ."</header>";
    }
    
    public function Footer(){
    echo  "<footer>"
            ."<a  id='about' href=''>O nama</a>"
            ."<div id='footer'>"
                ."<a  href='https://en-gb.facebook.com/'><img  src='CSS/fb.png' width='35'></a>"
                ."<a  href='https://www.instagram.com/?hl=eng'><img  src='CSS/inst.png' width='35'></a>"
                ."<a  href='https://twitter.com/login'><img  src='CSS/twit.png' width='35'></a>"
                ."<a  href='https://www.youtube.com/?hl=hr&gl=HR'><img  src='CSS/yt.png' width='35'></a>"
            ."</div>"
        ."</footer>";
    }
}