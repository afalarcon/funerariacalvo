<?php
include_once('../Conexion/connection.php');
//$items001=new Parametros();
//$datos001=$items001->consu_barrios();
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
.tab-card {
  border:1px solid #eee;
}

.tab-card-header {
  background:none;
}
.mr-auto {
    margin-right: 0 !important;
}
</style>

</head>
<body>

<div class="card" >
  <ul class="list-group list-group-flush">
    <li class="list-group-item">
		<div class="row">
			<div class="col-sm-12">
			<div class="row">
			<div class="col-sm-6 text-left">
			Información Usuarios
			</div>
				<div class="col-sm-6 text-right">

				
			<button class="btn btn-primary" onclick="Texnuev()" data-title="Edit" ><span class="glyphicon glyphicon-ok"></span> Nuevo</button>
			</div>
</div>
			</div>
		

		</div>
		

	</li>
    <li class="list-group-item">

	<div class="table-responsive p-3">
					
					<p>
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
					<table class="table  table-flush table-hover table-sm" id="dataTableHover10">
						<thead class="thead-light">
							<th>ID</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>NomUsuario</th>
							<th>Acción</th>
						</thead>
						<tbody>
							<?php
								include_once('../Conexion/connection.php');
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
								    			<a href="#edit_<?php echo $row['id']; ?>" class="btn btn-info btn-sm" data-toggle="modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</a>
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
	</li>    
  </ul>
</div>
<br>
		<div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
               
              </div>
            </div>
        </div>
    
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
    <script>
		$('#dataTableHover10').DataTable();
    function Texid(xd){
		$("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});

    $("#TextContenid").empty();
	
    	$("#TextContenid").load("Usuariosd/drivers.php",{tip01:2,ids:xd});	
		


    }
      function Texnuev(){
		$("#ModalPrinci").modal({backdrop:'static',keyboard:false,show:true});
		$("#exampleModalLabel").empty();
		$("#exampleModalLabel").html("Nuevo Usuario");
    $("#TextContenid").empty();    
    	$("#TextContenid").load("Usuariosd/drivers.php",{tip01:1,ids:0});
	
    }
    </script>
	
</body>
</html>