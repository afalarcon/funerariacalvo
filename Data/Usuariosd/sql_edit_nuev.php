<?php 
require_once("../class/class_user.php");

$items002= new Usuarios();


if($dat002=$items002->NuevUsuario($_POST['Usuario'],$_POST['Clave'],$_POST['Nombre'],$_POST['Apellido'],utf8_encode($_POST['Correo']),$_POST['Fecha'],$_POST['Estado'],$_POST['Rol'])==true){
	echo 1;
	}	

/*($_POST['tips']==1){

	if($dat002=$items002->nuev_barrio($_POST['textbarrio'],$_POST['estado1'])==true){
		echo '<div class="alert alert-info">Se ingresa con exito..</div>';
		}

}else if($_POST['tips']==2){
	if($dat002=$items002->actual_barri($_POST['idtip'],$_POST['textbarrio'],$_POST['estado1'])==true){
		echo '<div class="alert alert-info">Se Actualiza el registro con exito..</div>';
		}
	}
		*/

?>