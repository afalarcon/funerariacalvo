<?php require_once("../class/clas_parametros.php");
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

						</tr>
					</thead>
					<tbody>
        					<?php  
                    for ($i=0; $i <count($datos021) ; $i++) { 
        					?>
						<tr>
    							<td class="text-center"><?php echo $datos021[$i][0]; ?></td>
    							<td><?php echo utf8_decode(utf8_encode($datos021[$i][1])); ?></td>
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][2])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][3])); ?></td>  
                  <td><?php echo utf8_decode(utf8_encode($datos021[$i][4])); ?></td>  	
						</tr>
						<?php } ?>
					</tbody>
				</table>
      </div>
    </div>
  </div>
</div>


                 

  <!-- Page level custom scripts -->
  <script>
    function ifm(){
          $("#MainConteni").load("Cuadre/nuevo.php");
    }

  </script>

  

</body>
</html>

