<?php 
require_once("../../class/clas_parametros.php");

$items002= new Parametros();

if($_POST['tips']==1){

	if($dat002=$items002->nuev_barrio($_POST['textbarrio'],$_POST['estado1'])==true){
		echo '<div class="alert alert-info">Se ingresa con exito..</div>';
		}

}else if($_POST['tips']==2){
	if($dat002=$items002->actual_barri($_POST['idtip'],$_POST['textbarrio'],$_POST['estado1'])==true){
		echo '<div class="alert alert-info">Se Actualiza el registro con exito..</div>';
		}
}
?>