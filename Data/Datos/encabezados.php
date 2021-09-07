<?php require_once("../class/clas_parametros.php");
$items001=new Parametros();
$datos001=$items001->titulares($_POST['ids']);

$items002=new Parametros();
$valor001=$items002->consu_tipos();

$items003=new Parametros();
$valor002=$items003->consu_mncp();

$items004=new Parametros();
$valor003=$items004->consu_depto();

$items005=new Parametros();
$valor005=$items005->consu_zonas();

$items011=new Parametros();
$datos011=$items011->consu_beneficiarios($_POST['ids']);

?>


<div class="container">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Titular</h4>

		<form id="form_edt_nuv" name="form_edt_nuv">
			      <input type="hidden" id="tips" name="tips" value="<?php echo  $_POST['tip01']; ?>">
		          <input type="hidden" id="idtip" name="idtip" value="<?php echo  $_POST['ids']; ?>">
		         
			<?php for ($j=0; $j <count($datos001); $j++) {?>
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Ficha:</label>
		                    <label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][0]; ?></label>
						</div>
						<div class="col-md-3">
						   <label class="control-label" style="position:relative; top:7px;">Zona:</label>
		                   <label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][19]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Afiliación:</label>
		                    <label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][2]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Tipo:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][21]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Identificación:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][4]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">1-Apellido:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][6]; ?></label>
						</div>
				  		<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">2-Apellido:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][5]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">1-Nombre:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][7]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">2-Nombre:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][8]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Dirección:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][9]; ?></label>
						</div>
						<div class="col-md-3">
							<label class="control-label" style="position:relative; top:7px;">Municipio:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][23]; ?></label>
		                </div>
		                
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">Departamento:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][26]; ?></label>
		                </div>
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">Telefono:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][12]; ?></label>
		                </div>
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">FNacimiento:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php echo $datos001[$j][13]; ?></label>
		                </div>
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">Contrato:</label>
							<label class="control-label" style="position:relative; top:7px;"><?php if($datos001[$j][18]=='PA'){ echo 'Particular'; }else{ echo 'Afiliado';}?></label>
		                </div>
						<div class="col-md-3">
							 
							<label class="control-label" style="position:relative; top:7px;">Estado:</label>
		                    <label class="control-label" style="position:relative; top:7px;"> 
		                     <?php if($datos001[$j][15]==1){ echo 'Activo'; }else{ echo 'Inactivo'; } ?>
		                     </label>
		              </div>
					</div>
				</div>
			<?php  } ?>
		</form>
    </div>
  </div>
</div>
<br>



<div class="container" id="idBnf">
  <div class="card">
    <div class="card-body">
      <div class="row">
            <div class="col-md-12">
            <button class="btn btn-primary" onclick="Texnuev(<?php echo $_POST['ids']; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Nuevo Beneficiario</button>
            <button class="btn btn-primary" onclick="Texcam(<?php echo $_POST['ids']; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Cambia Valor</button>
            <button class="btn btn-primary" onclick="Texdoc(<?php echo $_POST['ids']; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Adiciona Documentos</button>
            <button class="btn btn-primary" onclick="TexImg(<?php echo $_POST['ids']; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Ver Documentos</button>

            <hr>
        		<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
							<th>Contrato</th>
							<th>Identificación</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Telefono</th>
                            <th>Nacimiento</th>   
                            <th>Acciones</th>   
						</tr>
					</thead>
					<tbody>
        					<?php 
        					if(is_array($datos011)){


        					
                            for ($i=0; $i <count($datos011) ; $i++) { 
        					?>
						<tr>
							<td class="text-center"><?php echo $datos011[$i][0]; ?></td>
							<td><?php echo utf8_decode(utf8_encode($datos011[$i][5])); ?></td>
                            <td><?php echo utf8_decode(utf8_encode($datos011[$i][8].' '.$datos011[$i][9])); ?></td>  
                            <td><?php echo utf8_decode(utf8_encode($datos011[$i][6].' '.$datos011[$i][7])); ?></td>  
                            <td><?php echo utf8_decode(utf8_encode($datos011[$i][13])); ?></td>  	
                            <td><?php echo utf8_decode(utf8_encode($datos011[$i][14])); ?></td>  	
                            <td><button class="btn btn-success" onclick="Texid(<?php echo $datos011[$i][5]; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="fas fa-bars"></span></button></td>
						</tr>
						<?php } }?>
					</tbody>
				</table>
			</div>
      </div>
    </div>
  <div class="container" id="contenido"></div>
  </div>
</div>




    <script>

      function TexImg(xd){
    $("#TextContenid").empty(); 
        $("#TextContenid").load("Upload/imagen.php",{ids:xd});
    }
      function Texdoc(xd){
    $("#TextContenid").empty(); 
        $("#TextContenid").load("Upload/documentos.php",{ids:xd});
    }
      function Texnuev(idx){
    $("#TextContenid").empty();    
        $("#TextContenid").load("datos/encabezadosnb.php",{tip01:1,ids:0,fic:idx});
    }

      function Texid(xd){
    $("#TextContenid").empty(); 
        $("#TextContenid").load("datos/encabezadoseb.php",{tip01:2,ids:xd});
    }
      function Texcam(idx){
    $("#TextContenid").empty();    
        $("#TextContenid").load("datos/cambiavr.php",{tip01:1,ids:0,fic:idx});
    }
    </script>


