<?php

	session_start();
	include_once('../Conexion/connection.php');

	if(isset($_GET['id'])){
		$_SESSION['message'] = 'Entro';
		$database = new Connection();
		$db = $database->open();
		try{
			$stmt = $db->prepare($sql = "UPDATE segusuarios SET PassUsuario = :Clave,
											Nombre = :Nombre,
											Apellidos = :Apellido,
											Correo = :Correo,
											Estado = :Estado,
											SegRolid = :Rol
										 WHERE id = :Id");
				
				$_SESSION['message'] = ( $stmt->execute(array(
														  ':Id' =>  $_GET['id'],
														  ':Clave' => md5($_POST['Clave']), 
														  ':Nombre' => $_POST['Nombre'],
														  ':Apellido' => $_POST['Apellido'],
														  ':Correo' => $_POST['Correo'],
														  ':Estado' => $_POST['Estado'],
														  ':Rol' => $_POST['Rol']
														  )) ) ? 'Los datos se actualizaron' : 'Ocurrio un error. No se pudo actualizar';
			
			// declaración if-else en la ejecución de nuestra consulta
			//$_SESSION['message'] = ( $db->exec($sql) ) ? 

		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//cerrar conexión 
		$database->close();
	}
	else{
		$_SESSION['message'] = 'Primero debe llenar el formulario';
	}

	header('location: index.php');

?>