<?php require_once("../class/clas_parametros.php");
$items022=new Parametros();
$datos022=$items022->consu_usuarios();

$items023=new Parametros();
$datos023=$items023->consu_ciesfech();


include('../global/Sessiones.php'); 

$sess=$_SESSION['usuario'];
list($usu,$ape,$usuenc)=$sess;
$us=$usuenc;

?>
<div class="container-fluid" id="container-wrapper">
 <div class="col-lg-12">
    <div class="card mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold">Cierre de hoy</h6>
      </div>
      <div class="table-responsive p-3">
      	<form id="cierre">
      	<div class="form-group">
    		<label for="exampleInputEmail1">Entrega a:</label>
      	<select class="form-control" name="Usuar" id="Usuar">
      		<?php for ($i=0; $i <count($datos022) ; $i++) { ?>
      			<option value="<?php echo utf8_decode(utf8_encode($datos022[$i][3].' '.$datos022[$i][4])); ?>"><?php echo utf8_decode(utf8_encode($datos022[$i][3].' '.$datos022[$i][4])); ?></option> 
      		<?php } ?>
      	</select>
    	</div>

    	<div class="form-group">
    		<label for="exampleInputEmail1">Fecha:</label>
      	<select class="form-control" name="Fecha" id="Fecha">
      		<?php for ($j=0; $j <count($datos023) ; $j++) { ?>
      			<option value="<?php echo utf8_decode(utf8_encode($datos023[$j][0])); ?>"><?php echo utf8_decode(utf8_encode($datos023[$j][0])); ?></option> 
      		<?php } ?>
      	</select>
    	</div>
    	<div class="col-lg-12 col-md-12 col-sm-12">
    		<input type="hidden" name="Usuenv" id="Usuenv" value="<?php echo $us; ?>">
	                <br>
	                <button type="button" class="btn btn-success" id="btnrecibo" name="btnrecibo">Generar Cierre</button>
	            	</div>

      	</form>

      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

$("#btnrecibo").click(function(){
		alert('Cierre Generado');


		  var Usuar = $("#Usuar").val();
		  var Fecha = $("#Fecha").val();
		  var Usuenv = $("#Usuenv").val();
		  
		 
		  VentanaCentrada('Cuadre/reporte.php?Usuar='+Usuar+'&Fecha='+Fecha+'&Usuenv='+Usuenv,'Recibo','','1024','768','true');


		});
</script>