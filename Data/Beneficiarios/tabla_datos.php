<?php require_once("../class/clas_parametros.php");
$items001=new Parametros();
$datos001=$items001->consu_titulares();
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

    <script>
    $(document).ready(function() {
        $('#datatable').dataTable();
        
         $("[data-toggle=tooltip]").tooltip();
        
    } );
    </script>
    <style>
    .panl{
    	padding-top: 5px;
    }
    </style>

</head>
<body>

<div class="container">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Titulares</h4>
    
        <div class="row">
		
            <div class="col-md-12">
            <button class="btn btn-primary" onclick="Texnuev()" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Nuevo</button>
            <hr>
        <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
							<th>Ficha</th>
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
							<td class="text-center"><?php echo $datos001[$i][0]; ?></td>
							<td><?php echo utf8_decode(utf8_encode($datos001[$i][4])); ?></td>
                            <td><?php echo utf8_decode(utf8_encode($datos001[$i][7].' '.$datos001[$i][8])); ?></td>  
                            <td><?php echo utf8_decode(utf8_encode($datos001[$i][5].' '.$datos001[$i][6])); ?></td>  
                            <td><?php echo utf8_decode(utf8_encode($datos001[$i][12])); ?></td>  	
                            <td><?php echo utf8_decode(utf8_encode($datos001[$i][13])); ?></td>  	
                            <td><button class="btn btn-success" onclick="ife(<?php echo $datos001[$i][0]; ?>)" data-title="Edit" ><span class="glyphicon glyphicon-repeat"></span> Adm</button>
                                <button class="btn btn-success" onclick="Texid(<?php echo $datos001[$i][0]; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-repeat"></span> Editar</button>
                                </td>

						</tr>
						<?php } ?>
					</tbody>
				</table>
	</div>
    </div>
  </div>
<div class="container" id="contenido"></div>

</div>

    <script>
    function ife(id){
          $("#MainConteni").load("datos/encabezados.php",{tip01:id});
        }

  
    function Texid(xd){
    $("#TextContenid").empty(); 
        $("#TextContenid").load("datos/encabezadose.php",{tip01:2,ids:xd});
    }
      function Texnuev(){
    $("#TextContenid").empty();    
        $("#TextContenid").load("datos/encabezadosn.php",{tip01:1,ids:0});
    }
    </script>

</body>
</html>