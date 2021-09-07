<?php require_once("../class/clas_parametros.php");
$items041=new Parametros();
$datos041=$items041->Planes();

?>
<!-- titulo modal del diálogo -->
<div class="modal-header">
            <h4 class="modal-title"><div id="idtitulo01">Adiciona Valor Alterno</div></h4>
                  
            <button type="button" class="close" data-dismiss="modal">X</button>
          </div>
    
 
          <div class="modal-body">
 <!-- cuerpo de modal -->          

<form id="formnuv" name="formnuv">
	      
          <input type="hidden" id="fic" name="fic" value="<?php echo  $_POST['fic']; ?>">
         
<div class="col-md-12">
			<div class="row">
			
				<table class="table align-items-center table-flush table-hover" id="dataTableHover">
          		<thead class="thead-light">
						<tr>
				  <th>Vigencia</th>
				  <th>Valor</th>
                  <th>Detalle</th>
                  <th>Plan</th>
                  <th>Acciones</th>   
						</tr>
					</thead>
					<tbody>
        					<?php  
                    for ($i=0; $i <count($datos041) ; $i++) { 
        					?>
						<tr>
    			  <td class="text-center"><?php echo $datos041[$i][0]; ?></td>
    			  <td><?php echo utf8_decode(utf8_encode($datos041[$i][1])); ?></td>
                  <td><?php echo utf8_decode(utf8_encode($datos041[$i][2])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos041[$i][3])); ?></td>  
                  <td> <input type="radio" id="plan" name="plan" value="<?php echo $datos041[$i][0]; ?>"> </td>
						</tr>
						<?php } ?>
					</tbody>
				</table>

			</div>
			<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">Valor Alterno:</label>
							<input type="text"  name="VrAlt" id="VrAlt" class="form-control form-control-sm  mb-3">
		                </div>
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">N° Beneficiarios:</label>
							<input type="text"  name="NBen" id="NBen" class="form-control form-control-sm  mb-3">
		                </div>
</div>

</form>

<!-- termina cuerpo demodal -->
</div>
    
          <!-- pie del diálogo -->
          <div class="modal-footer">
          	<button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          </div>
<div id="respuesta001"></div>

<script>
	 $("#btnactualiz").click(function(){

  var fomr=$("#formnuv").serialize();
  $.ajax({
    url:"Datos/cambiavrl.php",
	type: 'post',
	cache: false,
	data: fomr,
	success: function(data)
	{
	$("#respuesta001").fadeIn(1000).html(data);
	$("#form_edt_nuv1").each(function(){
	  this.reset();
	})
	$("#textdesc").focus();
	//$("#idtable001").load("Datos/tabla_datosb.php"); 
	//$("#respuesta001").fadeOut(3500);
	}
  });
  });

</script>