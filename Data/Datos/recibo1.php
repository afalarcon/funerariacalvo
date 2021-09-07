<?php 
	include('../global/Sessiones.php'); 

	$sess=$_SESSION['usuario'];
	list($usu,$ape,$usuenc)=$sess;
	$us=$usuenc;
	$esta=1;

	include_once('../Conexion/connection.php');

	if(isset($_POST['concepto'])){
		$database = new Connection();
		$db = $database->open();
		try{

			$stmt = $db->prepare("INSERT INTO recibos (NroFicha,fecha,NoIden,FPago,VrReci,Concepto,User,Estado) VALUES(:Ficha,:fecha,:Id,:forma_pago,:monto,:concepto,:Us,:Estad)");

			$_SESSION['message'] = ( $stmt->execute(array(
														    ':Ficha'=>$_POST['Ficha'],
															':fecha'=>$_POST['fecha'],
															':Id'=>$_POST['Id'],
															':forma_pago'=>$_POST['forma_pago'],
															':monto'=>$_POST['vrrec'],
															':concepto'=>$_POST['concepto'],
															':Us'=>$us,
															':Estad'=>$esta
														)) ) ? 'Recibo agregado correctamente' : 'Something went wrong. Cannot add member';
														echo '<div class="alert alert-info">Se ingresa con exito..</div>';
	    			
			
						
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

	$contrato = $_POST['Ficha'];
	//header("Location:indexr.php?contrato=".$contrato);



	$Ficha=$_POST['Ficha'];
	$fecha=$_POST['fecha'];
	$Id=$_POST['Id'];
	$forma_pago=$_POST['forma_pago'];
	$monto=$_POST['monto'];
	$concepto=$_POST['concepto'];
	$periodoi=$_POST['periodoi'];
	$cantper=$_POST['cantper'];
	$vrrec=$_POST['vrrec'];



	if($Ficha!=''){
	$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
	if($mysqli===false){
		die();
	}

			 $sql="SELECT NroReci FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			LEFT JOIN `segusuarios` as c on a.User = c.NomUsuario
			where a.NroReci in  (SELECT max(NroReci) FROM `recibos` where a.NoIden = $Id)";

			if($result = $mysqli->query($sql)){
				if($result->num_rows>0){
				while ($row= $result->fetch_array()) {

				$NroReci=$row['NroReci'];
				}
			}	
		}

		for ($i = 0; $i < $cantper ; $i++) {
    		
			$dia_actual = date("d");
			$periodo =date("Y-m",strtotime($periodoi."+ $i month"));

			$fpago = $periodo.'-'.$dia_actual;
    		  $sqli="insert into periodos(NroFicha,IdUser,periodo,Recibo,Valor) values ($Ficha,'$Id','$fpago',$NroReci,$monto)";

			$result = $mysqli->query($sqli);

		}

	}

 ?>
