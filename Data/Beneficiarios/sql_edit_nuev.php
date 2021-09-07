<?php 
require_once("../class/clas_parametros.php");

$items002= new Parametros();

if($_POST['tips']==1){

	if($dat002=$items002->nuev_titular(		$_POST['zona'],
											$_POST['afiliacion'],
											$_POST['tipoid'],
											$_POST['identificacion'],
											$_POST['apellido1'],
											$_POST['apellido2'],
											$_POST['nombre1'],
											$_POST['nombre2'],
											$_POST['direccion'],
											$_POST['minicipio'],
											$_POST['departamento'],
											$_POST['telefono'],
											$_POST['nacimiento'],
											$_POST['contrato'],
											$_POST['estado'])==true)
		{
		echo '<div class="alert alert-info">Se ingresa con exito..</div>';
		}
	}else if($_POST['tips']==2){

	if($dat002=$items002->actual_titular($_POST['Ficha'],
											$_POST['zona'],
											$_POST['afiliacion'],
											$_POST['tipoid'],
											$_POST['identificacion'],
											$_POST['apellido1'],
											$_POST['apellido2'],
											$_POST['nombre1'],
											$_POST['nombre2'],
											$_POST['direccion'],
											$_POST['minicipio'],
											$_POST['departamento'],
											$_POST['telefono'],
											$_POST['nacimiento'],
											$_POST['contrato'],
											$_POST['estado'])==true)
		{
		echo '<div class="alert alert-info">Se Actualiza el registro con exito..</div>';
		}
}
?>