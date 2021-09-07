<?php

	session_start();
	include_once('../Conexion/connection.php');

	if(isset($_GET['id'])){
		$database = new Connection();
		$db = $database->open();
		try{
			$stmt = $db->prepare($sql = "DELETE FROM segusuarios WHERE id = :Id");
			// declaración if-else en la ejecución de nuestra consulta

			$_SESSION['message'] = ( $stmt->execute(array(':Id' =>  $_GET['id'])) )? 'Usuario eliminado correctamente' : 'Ocurrió un error. No se pudo eliminar al Usuario';	
			//$_SESSION['message'] = ( $db->exec($sql) ) 
		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//cerrar conexión
		$database->close();

	}
	else{
		$_SESSION['message'] = 'Seleccione un usuario a eliminar';
	}

	header('location: index.php');

?>