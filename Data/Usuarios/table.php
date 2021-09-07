<?php
include_once('../Conexion/connection.php');
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

</head>
<body>

		<!-- Inicio de tabla -->
		<div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="table-responsive p-3">
					<button class="btn btn-info btn-sm" onclick="Texnuev()" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Nuevo</button>
		            <?php 
		                session_start();
		                if(isset($_SESSION['message'])){
		                    ?>
		                    <div class="alert alert-dismissible alert-success" style="margin-top:20px;">
		                    <button type="button" class="close" data-dismiss="alert">&times;</button>
		                        <?php echo $_SESSION['message']; ?>
		                    </div>
		                    <?php
		                    unset($_SESSION['message']);
		                }
		            ?>
					<table class="table  table-flush table-hover table-sm" id="dataTableHover20">
						<thead class="thead-light">
							<th>ID</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>NomUsuario</th>
							<th>Acción</th>
						</thead>
						<tbody>
							<?php
								$database = new Connection();
		    					$db = $database->open();
								try{	
								    $sql = 'SELECT * FROM segusuarios';
								    foreach ($db->query($sql) as $row) {
								    	?>
								    	<tr>
								    		<td><?php echo $row['id']; ?></td>
								    		<td><?php echo $row['Nombre']; ?></td>
								    		<td><?php echo $row['Apellidos']; ?></td>
								    		<td><?php echo $row['NomUsuario']; ?></td>
								    		<td>
								    			<button class="btn btn-success" onclick="Texid(<?php echo $row['id']; ?>)" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-repeat"></span> Editar</button>
								    			<a href="#delete_<?php echo $row['id']; ?>" class="btn btn-info btn-sm" data-toggle="modal"><i class="fa fa-trash-o" aria-hidden="true"></i> Elim</a>
								    		</td>
								    		
								    	</tr>
								    	<?php 
								    }
								}
								catch(PDOException $e){
									echo "There is some problem in connection: " . $e->getMessage();
								}
								$database->close();
							?>
						</tbody>
					</table>
                </div>
              </div>
            </div>
        </div>
        <!-- Fin Tabla -->
    
    <script>


    function Texid(xd){
    $("#TextContenid").empty();
    	
    	$("#TextContenid").load("Usuarios/new.php",{tip01:2,ids:xd});	
    }
      function Texnuev(){
    $("#TextContenid").empty();    
    	$("#TextContenid").load("Usuarios/edit.php",{tip01:1,ids:0});
    }
    </script>
	
</body>
</html>

  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script>
	  
   $(document).ready(function () {
	
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover20').DataTable(); // ID From dataTable with Hover
    });
  </script>