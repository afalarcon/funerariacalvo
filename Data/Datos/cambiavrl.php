<?php 
require_once("../class/clas_parametros.php");
$items002= new Parametros();
$cas=1;
	if($dat002=$items002->Cambiavlr($cas,		
											$_POST['plan'],
											$_POST['fic'],
											$_POST['VrAlt'],
											$_POST['NBen'])==true)
		{
		echo '<div class="alert alert-info">Se ingresa con exito..</div>';
		}


?>