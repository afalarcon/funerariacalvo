<?php require_once("../class/clas_parametros.php");

include('../global/Sessiones.php'); 

$items021=new Parametros();
$datos021=$items021->consu_cierres();
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
<div class="container-fluid" id="container-wrapper">
 <div class="col-lg-12">
    <div class="card mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold">Cierres Diarios</h6><button class="btn btn-success" onclick="ifm()" data-title="Edit"><span class="far fa-edit"></span></button>
      </div>
      <div class="table-responsive p-3">

        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
          <thead class="thead-light">
			<tr>
				  <th>Cierre</th>
				  <th>UsuarioEn</th>
                  <th>UsuarioRe</th>
                  <th>Fecha</th>
                  <th>Valor</th>
                  <th>Reimpresión</th>
			</tr>
		  </thead>
		  <tbody>
        	<?php  
              for ($i=0; $i <count($datos021) ; $i++) { 
          ?>
			<tr>
    			  <td class="text-center"><?php echo $datos021[$i][0]; ?></td>
    			  <td><?php echo utf8_decode(utf8_encode($datos021[$i][8].' '.$datos021[$i][9])); ?></td>
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][2])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][3])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][4])); ?></td>
                  <td><button class="btn btn-success" onclick="ventanaNueva('Cuadre/reimpresion.php?ids=<?php echo $datos021[$i][0]; ?>')"  data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="far fa-edit"></span></button></td>
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
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });



    function ventanaNueva(documento){	
	window.open(documento,'nuevaVentana','width=300, height=400');
}
  </script>

</body>
</html>

