<?php 

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
	$mysqli = new mysqli('localhost','root','','appfcalvo');
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
    		 echo $sqli="insert into periodos(NroFicha,IdUser,periodo,Recibo,Valor) values ($Ficha,'$Id','$fpago',$NroReci,$monto)";

			$result = $mysqli->query($sqli);

		}






	}
?>