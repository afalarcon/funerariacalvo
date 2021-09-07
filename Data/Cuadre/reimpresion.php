<?php 

	include('../global/Sessiones.php'); 

	$sess=$_SESSION['usuario'];
	list($usu,$ape,$usuenc)=$sess;
	$us=$usuenc;
	$esta=1;

	//$usue=$_GET['Usuenv'];
	//$fech=$_GET['Fecha'];
	$ids=$_GET['ids'];



	$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
	if($mysqli===false){
		die();
	}




	$sql3="SELECT idCier,FecCier,VarCier,UserRec FROM `cierre` where idCier=$ids";
         $result3 = $mysqli->query($sql3);
			$result3->num_rows>0;

					while ($row3= $result3->fetch_array()) {
						$idcier=$row3['idCier'];
						$fech=$row3['FecCier'];
						$valor=$row3['VarCier'];
						$usur=$row3['UserRec'];
								}

$sql5="SELECT * FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			where NroCierre= $idcier";
         $result5 = $mysqli->query($sql5);
			$result5->num_rows>0;

					



	include("../config/empresa.php");
?>
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }

.text-center{
	text-align:center
}
.text-right{
	text-align:right
}
table th, td{
	font-size:13px
}
.detalle td{
	padding:7px;
}

.border-bottom{
	border-bottom: solic 1px #bdc3c7;
}
.Estilo1 {
	font-size: 16px;
	font-weight: bold;
}
.Estilo2 {font-size: 14px}
.Estilo3 {font-size: 12px}
.Estilo4 {font-size: 10px}

	

.headt td {
  max-height:; 235px;
  height: 100px;
  background-color: #433;
}


</style>
<page backtop="10mm" backbottom="10mm" backleft="10mm" backright="10mm" style="font-size: 11pt; font-family: arial" >

    <table cellspacing="0" style="width: 100%;">
        <tr>
            <td rowspan="2"  style="width: 33%; color: #444444;"><img style="width:45%;" src="../img/logo.png" alt="Logo"><br></td>
			<td colspan="2" style="width: 34%;"><br/><p><span class="Estilo1" style="width: 33%;"></span></p></td>
	    </tr>
        <tr>
          <td style="width: 34%;"><strong><p><span class="Estilo1" style="width: 33%;"><?php echo nombre_empresa;?></span></p><br /></td>
          <td style="width: 33%;"></td>
        </tr>
    </table>




<div class="container-fluid" id="container-wrapper">
 <div class="col-lg-12">
    <div class="card mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
      <strong>Cierre diario <?php echo $fech; ?></strong>
      </div>
      <div class="table-responsive p-3">

        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
          <thead class="thead-light">
						<tr>
							<th>Contrato</th>
							<th>Identificación</th>
                  			<th>Nombres</th>
                  			<th>Apellidos</th>
                  			<th>Recibo Nro</th>
                  			<th>Valor</th>   
						</tr>
					</thead>
					<tbody>
        					<?php  
                    while ($row5= $result5->fetch_array()) {
						$idcier=$row3['idCier'];
        					?>
						<tr>
    			  <td class="text-center"><?php echo $interno=$row5['Interno']; ?></td>
      			  <td><?php echo $interno=$row5['NoIden']; ?></td>
                  <td><?php echo utf8_decode(utf8_encode($row5['PriNom'].' '.$row5['SegNom'])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($row5['PriApe'].' '.$row5['SegApe'])); ?></td>  
                  <td><?php echo $recibo=$row5['NroReci'];  ?></td>  	
                  <td><?php echo $valorr=$row5['VrReci']; ?></td>  	
						</tr>
						<?php } ?>
					<tr>
						<td ></td>
						<td ></td>
						<td ></td>
						<td ></td>
						<td >Total</td>
						<td ><?php echo $valor ?></td>
					</tr>



					</tbody>
				</table>

<br>


<table class="table table-borderless">
	
						<tr>
						<td >________________________________</td>
						<td ></td>
						<td ></td>
						<td >________________________________</td>
						<td ></td>
						<td ></td>
					</tr>	
					<tr>
						<td >Entregado por</td>
						<td ></td>
						<td ></td>
						<td >Recibido por</td>
						<td ></td>
						<td ></td>
					</tr>
					<tr>
						<td ><?php echo $usu.' '.$ape ?></td>
						<td ></td>
						<td ></td>
						<td ><?php echo $usur ?></td>
						<td ></td>
						<td ></td>
					</tr>
</table>

      </div>
    </div>
  </div>
</div>
