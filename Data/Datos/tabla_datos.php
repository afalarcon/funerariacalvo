<?php require_once("../class/clas_parametros.php");
$items001=new Parametros();
$datos001=$items001->consu_titulares();
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>


    <style>
    .panl{
    	padding-top: 5px;
    }
    </style>

    
</head>
<body>
<div class="contcddainer-fluid" id="contaidner-wrapper">
 <div class="col-lg-12">
    <div class="card mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold">Contratos</h6><button class="btn btn-success" onclick="Texnuev()" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="far fa-edit"></span></button>
      </div>
      <div class="table-responsive p-3">

        <table style="font-size:12px;" class="table align-items-center table-flush table-hover" id="dataTableHover">
          <thead class="thead-light">
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
                    for ($i=0; $i <count($datos001) ; $i++) { 
        					?>
						<tr>
    							<td class="text-center"><?php echo $datos001[$i][18]; ?></td>
    							<td><?php echo utf8_decode(utf8_encode($datos001[$i][4])); ?></td>
                  <td><?php echo utf8_decode(utf8_encode($datos001[$i][7].' '.$datos001[$i][8])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos001[$i][5].' '.$datos001[$i][6])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos001[$i][12])); ?></td>  	
                  <td style="width:15%"><?php echo utf8_decode(utf8_encode($datos001[$i][13])); ?></td>  	
                  <td style="width:15%">
                    <button class="btn btn-success btn-sm" onclick="ife(<?php echo $datos001[$i][0]; ?>)" title="Agregar Información"><span class="fas fa-plus-circle"></span></button>
                  <button class="btn btn-success btn-sm" onclick="ifr(<?php echo $datos001[$i][0]; ?>)" title="Generar Recibos"><span class="far fa-file-alt"></span></button>
                  <button class="btn btn-success btn-sm" onclick="TexidEdi(<?php echo $datos001[$i][0]; ?>)" title="Editar Información" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="far fa-edit"></span></button></td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
      </div>
    </div>
  </div>
</div>

<div class="container" id="contenido"></div>
                 

  <!-- Page level custom scripts -->
  <script>
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
     // ID From dataTable with Hover
    });

    function ife(id){
          //$("#MainConteni").load("datos/encabezados.php",{ids:id});

          $("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});
    $("#TextContenid").empty(); 
        $("#TextContenid").load("datos/encabezados.php",{ids:id});
    }
    function ifr(id){
          //$("#MainConteni").load("datos/recibo.php",{ids:id});
          $("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});
          
    $("#TextContenid").empty(); 
        $("#TextContenid").load("datos/recibo.php",{ids:id});
        $("#TamañoMdl").css("max-width","80%");
        $("#exampleModalLabel").empty();
          $("#exampleModalLabel").html("Generar Recibos");
    }
    function TexidEdi(xd){
      
      $("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});
        $("#TextContenid").empty(); 
        $("#exampleModalLabel").html("Editar Información");
        $("#TamañoMdl").css("max-width","60%");
        $("#TextContenid").load("datos/encabezadose.php",{tip01:2,ids:xd});
    }
      function Texnuev(){
        $("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});
        $("#exampleModalLabel").html("Nuevo Contrato");
        $("#TamañoMdl").css("max-width","60%");
    $("#TextContenid").empty();    
        $("#TextContenid").load("datos/encabezadosn.php",{tip01:1,ids:0});
    }

  </script>

  <script>
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
      $('#dataTableHover2').DataTable(); 
    });
  </script>

</body>
</html>

