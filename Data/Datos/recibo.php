<?php include('../global/Sessiones.php');

require_once("../class/clas_parametros.php");
$items001=new Parametros();
$datos001=$items001->recibos1($_POST['ids']);

$items015=new Parametros();
$datos015=$items015->recibos2($_POST['ids']);

$items028=new Parametros();
$datos028=$items028->recibos4($_POST['ids']);


//print_r($datos028);

?>

<div class="container">
  <div class="card">
    <div class="card-body">
			<nav>
			  <div class="nav nav-tabs" id="nav-tab" role="tablist">
			    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Recibos</a>
			    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Reimpresión</a>
			    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile1" role="tab" aria-controls="nav-profile" aria-selected="false">Periodos</a>
			    
			  </div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
			  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

			  	<?php for ($j=0; $j <count($datos001); $j++) {  ?>
			  	<form id="datos_recibo">
				  		<div class="col-lg-12 col-md-12 col-sm-12">
	                    Detalles del recibo: 
					<div class="row">
						
						<div class="col-md-4 text-center pt-3">
							<label><strong>Contrato: </strong></label>
							<input type="hidden" name="Ficha" id="Ficha" value="<?php echo $datos001[$j][0]; ?>" >
							<input type="text" class="form-control" readonly name="interno" id="Interno" value="<?php echo $datos001[$j][18]; ?>" >
						</div>	
						<div class="col-md-4 text-center pt-3 ">
							<label><strong>Tipo Id: </strong></label>
							<input type="text" class="form-control" readonly name="Tipo" value="<?php echo $datos001[$j][3]; ?>" >
						</div>
						<div class="col-md-4 text-center pt-3">
							<label><strong>Id: </strong></label>
							<input type="text" class="form-control" name="Id" id="Id" readonly value="<?php echo $datos001[$j][4]; ?>" >
						</div>
						
					</div>	
					<div class="row">
						<div class="col-md-8 text-center pt-3"> 	
							<label><strong>Nombres: </strong></label>
							<input type="text" class="form-control" readonly value="<?php echo $datos001[$j][8].' '.$datos001[$j][7].' '.$datos001[$j][6].' '.$datos001[$j][5]; ?>" >
						</div>
						<div class="col-md-4 text-center pt-3">
							<label><strong>Fecha: </strong></label>
							<input type="text" class="form-control" name="fecha" readonly value="<?php echo date("Y-m-d");?>" >
						</div>
				   </div>
				   <div class="row">
						<div class="col-md-4 text-center pt-3">
							<label><strong>Forma de pago: </strong></label>
							<select class="form-control" required name="forma_pago" id="forma_pago">
								<option value="">Seleccione...</option>
								<option value="1">Efectivo</option>
								<option value="2">Cheque</option>
								<option value="3">Transferencia</option>
							</select>						
						</div>
						<div class="col-md-4 text-center pt-3">

						<div class="col-sm-12">
							<div class="row">
                        <div class="col-sm-6"><br><br>
						<div class="form-check">
    <input type="checkbox" class="form-check-input" id="ManualCheck">
    <label class="form-check-label" for="exampleCheck1">Monto Manual</label>
  </div>
						</div>
						<div class="col-sm-6">
						<label><strong>Monto: </strong></label>
							<input type="text" class="form-control" required name="monto" id="monto" value="<?php echo $datos001[$j][22]; ?>">
						</div>

						</div>
						</div>
							
						</div>
						<div class="col-md-4 text-center pt-3">
							<label><strong>Periodo Inicial: <?php  
                      				$items016=new Parametros();
                      				$datos016=$items016->recibos3($_POST['ids']);
								$periodoi = $datos016['periodo']; 
								
								$dia_actual = date("d");
								 $periodo =date("Y-m",strtotime($periodoi."+ 1 month")); 
								?></strong></label>
							<select class="form-control" required name="periodoi" id="periodoi">
								<?php
								$array1= array('2020','2021','2022','2023','2024');
								$arrays= array('01','02','03','04','05','06','07','08','09','10','11','12');

								for ($i=0; $i <count($array1) ; $i++) { 
									for ($r=0; $r <count($arrays) ; $r++) { 
									$conct=$array1[$i]."-".$arrays[$r];

									if($conct!=$periodo){
										echo "<option value='".$conct."'>".$conct."</option>";
									}else{
									 echo "<option value='".$conct."' selected='".$conct."'>".$conct."</option>";
									}
									}	
								}
								?>
							</select>
						</div>
							</div>
							<div class="row">
						<div class="col-md-4 text-center pt-3">
							<label><strong>Cant. Periodos: </strong></label>
							<input type="text" class="form-control" required name="cantper" id="cantper" placeholder="Cantidad Periodos">
						</div>
						<div class="col-md-4 text-center pt-3">
							<label><strong>Valor: </strong></label>
							<input type="text" class="form-control" required name="vrrec" id="vrrec" placeholder="Ingrese el Valor">
						</div>
							</div>

					<div class="pt-3 text-center">
	                    <strong>Concepto: </strong> 
						<textarea name="text" class="form-control" id="concepto" name="concepto" placeholder="Ingrese el Concepto" required cols="30" rows="5"></textarea>	
	                    </div>
	                </div>
	                <div class="col-lg-12 col-md-12 col-sm-12 text-center">
	                <br>
	                <button type="button" class="btn btn-success" id="btnrecibo" name="btnrecibo">Generar recibo</button>
	            	</div>
			  	</form>
			  	<?php } ?>
			  </div>
			  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
			  	
<br>
			  <table class="table align-items-center table-flush table-hover" id="dataTableHover2">
          		<thead class="thead-light">
				 <tr>
				  <th>Contrato</th>
				  <th>Identificación</th>
                  <th>Nombres</th>
                  <th>Apellidos</th>
                  <th>Recibo</th>
                  <th>Fecha</th>
                  <th>Estado</th>   
                  <th>Acciones</th>   
				 </tr>
				</thead>
				<tbody>
        			<?php
        			if(is_array($datos015)){
        			 for ($l=0; $l <count($datos015); $l++) {  ?>

				  <tr>
    			  <td class="text-center"><?php echo $datos015[$l][0]; ?></td>
    			  <td><?php echo utf8_decode(utf8_encode($datos015[$l][3])); ?></td>
                  <td><?php echo utf8_decode(utf8_encode($datos015[$l][18].' '.$datos015[$l][19])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos015[$l][20].' '.$datos015[$l][21])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos015[$l][1])); ?></td>  	
                  <td><?php echo utf8_decode(utf8_encode($datos015[$l][2])); ?></td>
                  <td><?php  if($datos015[$l][8]==1){ echo 'Activo'; }else{echo 'Inactivo'; } ?></td>  	
                  <td><button class="btn btn-success" onclick="ide(<?php echo $datos015[$l][1]; ?>)" data-title="Edit"><span class="fas fa-plus-circle"></span></button><button class="btn btn-success" onclick="anr(<?php echo $datos015[$l][1]; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="far fa-edit"></span></button></td>
				 </tr>
				   <?php }
				   } ?>
				</tbody>
			  </table>
			  </div>

			  <div class="tab-pane fade" id="nav-profile1" role="tabpanel" aria-labelledby="nav-profile-tab">
			  	
<br>
			  <table class="table align-items-center table-flush table-hover" id="dataTableHover3">
          		<thead class="thead-light">
				 <tr>
				  <th>Periodo</th>
				  <th>Recibo</th>
                  <th>Valor</th>
                  <th>Apellidos</th>
                  <th>Nombres</th>
 
				 </tr>
				</thead>
				<tbody>
        			<?php
					if(!empty($datos028)){
					 for ($k=0; $k <count($datos028); $k++) {  ?>
				  <tr>
    			  <td class="text-center"><?php echo $datos028[$k][3]; ?></td>
    			  <td><?php echo utf8_decode(utf8_encode($datos028[$k][4])); ?></td>
    			  <td><?php echo utf8_decode(utf8_encode($datos028[$k][5])); ?></td>  	
                  <td><?php echo utf8_decode(utf8_encode($datos028[$k][13].' '.$datos028[$k][14])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos028[$k][11].' '.$datos028[$k][12])); ?></td>  
                    	
                  
				 </tr>
				   <?php } 
				   }?>
				</tbody>
			  </table>
			  </div>

			</div>
    </div>
  </div>
</div> 
<div id="respuesta020"></div>



<script type="text/javascript">

$(document).ready(function () {
      $("#monto").prop("disabled",true);
      $('#dataTableHover2').DataTable(); // ID From dataTable with Hover
      $('#dataTableHover3').DataTable(); 
	  
$("#ManualCheck").click(function(){

if($("#ManualCheck").prop("checked")){
	$("#monto").prop("disabled",false);
}
});
    });

	    function ide(cs){
          VentanaCentrada('./pdf/documentos/recibo.php?rec='+cs,'Recibo','','1024','768','true');
    	}


		function anr(xd){
	    $("#TextContenid").empty(); 
	        $("#TextContenid").load("datos/anurec.php",{ids:xd});
	    }

    	$(document).ready(function(){
    	$("#cantper").change(function(){
			    	
			    	var monto = $("#monto").val();
			    	var cantper = $("#cantper").val();
			    	var res = monto * cantper;
			    	//console.log(res);
			    	$("#vrrec").val(res);
    	     });
    	});

		$("#btnrecibo").click(function(){


//validamos los campos obligatorios que no vengan vacidos
var error="";
var FomPag=$("#forma_pago").val();
var Mont=$("#monto").val();
var cantid=$("#cantper").val();
var valor=$("#vrrec").val();
var concp=$("#concepto").val();

if(FomPag ==""){
error+="La forma de pago es obligatorio <br>";
}
if(Mont ==""){
	error+="EL monto es obligatorio <br>";
}
if(cantid ==""){
	error+="La cantidad es obligatoria <br>";
}
if(valor ==""){
	error+="EL valor es obligatorio <br>";
}
if(concp ==""){
	error+="Favor ingrese un concepto para continuar <br>";
}


		

	 if(error==""){
	 	 var cliente = $("#Id").val();
		  var forma_pago = $("#forma_pago").val();
		  var numero = $("#Ficha").val();
		  var monto = $("#monto").val();
		  var concepto = $("#concepto").val();
	 VentanaCentrada('./pdf/documentos/recibo.php?cliente='+cliente+'&forma_pago='+forma_pago+'&numero='+numero+'&monto='+monto+'&concepto='+concepto,'Recibo','','1024','768','true');	

			 var fom=$("#datos_recibo").serialize();
		  $.ajax({
		    url:"datos/recibo1.php",
			type: 'post',
			cache: false,
			data: fom,
			success: function(data)
			{
				//console.log(data);
			$("#respuesta020").fadeIn(1000).html(data);

			//$("#idtable01").load("indexr.php",id:data); 
			alert('Recibo generado con exito');
			$("#respuesta001").fadeOut(3500);
			}
		 });

		}else{
			alert(error);
		}


		});


		 
</script>