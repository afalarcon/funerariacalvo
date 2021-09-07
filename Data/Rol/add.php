<?php

	session_start();
	include_once('../Conexion/connection.php');

	if(isset($_POST['Detalle'])){
		$database = new Connection();
		$db = $database->open();
		try{

			$stmt = $db->prepare("INSERT INTO segrol (RolDetalle,Estado) VALUES (:Rol, :Estado)");

			$_SESSION['message'] = ( $stmt->execute(array(
														  ':Rol' => $_POST['Detalle'], 
														  ':Estado' => $_POST['Estado']
														)) ) ? 'Rol agregado correctamente' : 'Something went wrong. Cannot add member';
														echo '1';
	    
		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//cerrar conexión
		$database->close();
	}

	else{
		$_SESSION['message'] = 'Error en ingreso de datos';
	}

	header('location: index1.php');
	
?>
