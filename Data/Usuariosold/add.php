<?php

	session_start();
	include_once('../Conexion/connection.php');

	if(isset($_POST['Usuario'])){
		$database = new Connection();
		$db = $database->open();
		try{

			$stmt = $db->prepare("INSERT INTO segusuarios (NomUsuario,PassUsuario,Nombre,Apellidos,Correo,FechaRegis,Estado,SegRolid) VALUES 											(:Usuario, :Clave, :Nombre, :Apellido, :Correo, :Fecha, :Estado, :Rol)");

			$_SESSION['message'] = ( $stmt->execute(array(
														  ':Usuario' => $_POST['Usuario'], 
														  ':Clave' => md5($_POST['Clave']), 
														  ':Nombre' => $_POST['Nombre'],
														  ':Apellido' => $_POST['Apellido'],
														  ':Correo' => $_POST['Correo'],
														  ':Fecha' => $_POST['Fecha'],
														  ':Estado' => $_POST['Estado'],
														  ':Rol' => $_POST['Rol']
														)) ) ? 'Usuario agregado correctamente' : 'Something went wrong. Cannot add member';
														echo '1';
	    
		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//cerrar conexión
		$database->close();
	}

	else{
		$_SESSION['message'] = 'Error en inserccion';
	}

	header('location: index1.php');
	
?>
