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
	$mysqli = new mysqli('localhost','root','','appfcalvo');
	if($mysqli===false){
		die();
	}

	$sql1="SELECT * FROM images where NroFicha = 11";

			if($result = $mysqli->query($sql)){
				if($result->num_rows>0){

					while ($row= $result->fetch_array()) {
					
					echo $img=$row['img'];
				}
			}	
		}
	}

	
    include(dirname('__FILE__').'/res2/img_html.php');
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
        $html2pdf->Output('docs.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
