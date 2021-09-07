<?php 
session_start();
if(!isset($_SESSION['usuario']))
{
  "No session_start()";
  header('Location: ../index.php');
}else{
  ($_SESSION['usuario']); 
}

 ?>
