<?php
//on insère le fichier qui contient les fonctions
require_once ("../include/class.pdogsb.inc.php");
require_once ("../include/fct.inc.php");

//appel de la fonction qui permet de se connecter à la base de données
$lePdo = PdoGsb::getPdoGsb();

var_dump($lePdo->creeMedecin("math","dup","y@gmail.com", "YJhd4gR#9UAR2pGA"));
