<?php 
	include('../global/Sessiones.php'); 

	$sess=$_SESSION['usuario'];
	list($usu,$ape,$usuenc)=$sess;
	$us=$usuenc;

	$mysqli = new mysqli('localhost','root','','appfcalvo');
	if($mysqli===false){
		die();
	}


	$Usuario=$_POST['Usuario'];
	$Clave=$_POST['Clave'];
	$Rec=$_POST['Rec'];
	$Motivo=$_POST['Motivo'];
	$Obs=$_POST['Obs'];

	$user =  $Usuario;
	$saltU = md5($user);
	$Usr_enc = crypt($user, $saltU);

	$pass =  $Clave;
	$saltP = md5($pass);
	$Psw_enc = crypt($pass, $saltP);

	if($us==$Usr_enc){
		?>
		<script>
			alert("Usuario de Anulación es Igual a Usuario Activo, No se puede realizar la Anulación");
		</script>
	<?php
	}else{

		$sql="Select NomUsuario from segusuarios where NomUsuario = '$Usr_enc' and PassUsuario = '$Psw_enc' and SegRolid = 1";
		    $result3 = $mysqli->query($sql);
			$result3->num_rows>0;

					while ($row3= $result3->fetch_array()) {
						$idcier=$row3['NomUsuario'];
						}
			if($idcier!=''){
				echo $sqlu="update recibos set estado = 0, UsAnula = '$Usr_enc',Motanul = $Motivo ,DetAnu = '$Obs' where NroReci = $Rec";
				 $resultu = $mysqli->query($sqlu);

				echo 'Anulación Realizada';

			}else{
				?>
		<script>
			alert("Usuario de Anulación no Tiene privilegios para realizar la Anulación");
		</script>
		
			<?php	
			}


	}

?>