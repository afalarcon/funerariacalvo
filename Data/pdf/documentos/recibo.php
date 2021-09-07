<?php

	 ob_start();
	session_start();
	/* Connect To Database*/
	include("../../config/empresa.php");
	include("../../numeroALetra.php");
	require_once(dirname(__FILE__).'/../html2pdf.class.php');

	//require_once("../../class/clas_parametros.php");
	//$items055=new Parametros();
	//$datos055=$items055->consu_recibos($_GET['numero']);
	
	/*			
	//Variables por GET
    $cliente='10034790';
	$forma_pago=1;
	$numero=1;
	$monto=55;
	$concepto='PAgo mes de mayo';

   */

	@$Nro = $_GET['numero'];
	@$Rcb = $_GET['rec'];

	if($Nro!=''){
	$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
	if($mysqli===false){
		die();
	}

	$sql="SELECT * FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			LEFT JOIN `segusuarios` as c on a.User = c.NomUsuario
			where a.NroReci in  (SELECT max(NroReci) FROM `recibos` where NroFicha = $Nro)";

			if($result = $mysqli->query($sql)){
				if($result->num_rows>0){

					while ($row= $result->fetch_array()) {
	
	$cliente=$row['PriNom'].' '.$row['SegNom'].' '.$row['PriApe'].' '.$row['SegApe'];
	$forma_pago=$row['FPago'];
	$numero=$row['NroReci'];
	$monto=$row['VrReci'];
	$concepto=$row['Concepto'];
	$userr=$row['Nombre'].' '.$row['Apellidos'];
	$contrato=$row['Interno'];
	$NroIden=$row['NoIden'];
	//$tipId=$row['idTipId'];
				}
			}	
		}
	}

	if($Rcb!=''){
	$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
	if($mysqli===false){
		die();
	}

	$sql="SELECT * FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			LEFT JOIN `segusuarios` as c on a.User = c.NomUsuario
			where NroReci = $Rcb";

			if($result = $mysqli->query($sql)){
				if($result->num_rows>0){

					while ($row= $result->fetch_array()) {
	
	$cliente=$row['PriNom'].' '.$row['SegNom'].' '.$row['PriApe'].' '.$row['SegApe'];
	$forma_pago=$row['FPago'];
	$numero=$row['NroReci'];
	$monto=$row['VrReci'];
	$concepto=$row['Concepto'];
	$userr=$row['Nombre'].' '.$row['Apellidos'];
	$contrato=$row['Interno'];
	$NroIden=$row['NoIden'];
	//$tipId=$row['idTipId'];.
				}
			}	
		}
	}

	
	$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
	if($mysqli===false){
		die();
	}

	 $sqlp="SELECT max(periodo) as periodo FROM `periodos` 	where Recibo = $numero";

			if($resultp = $mysqli->query($sqlp)){
				if($resultp->num_rows>0){

					while ($rowp= $resultp->fetch_array()) {
		
					$prpago=$rowp['periodo'];
					$periodo =date("d-m-Y",strtotime($prpago."+ 1 month"));
					//$tipId=$row['idTipId'];.
				}
			}	
		}


    include(dirname('__FILE__').'/res/recibo_html.php');
    $content = ob_get_clean();

    try
    {
        // init HTML2PDF
        $html2pdf = new HTML2PDF('P', 'LETTER', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('Recibo.pdf');
		$html2pdf->Output('Temporal/Recibo.pdf','F'); 
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
