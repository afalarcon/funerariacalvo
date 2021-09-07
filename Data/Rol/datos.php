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
</style>

</head>
<body>

		<div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="table-responsive p-3">
					<button class="btn btn-primary" onclick="Texnuev()" data-title="Edit" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-ok"></span> Nuevo</button>
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
					<table class="table  table-flush table-hover table-sm" id="dataTableHover">
						<thead class="thead-light">
							<th>ID</th>
							<th>Descripción</th>
							<th>Estado</th>
							<th>Acción</th>
						</thead>
						<tbody>
							<?php
								include_once('../Conexion/connection.php');
								$database = new Connection();
		    					$db = $database->open();
								try{	
								    $sql = 'SELECT * FROM segrol';
								    foreach ($db->query($sql) as $row) {
								    	?>
								    	<tr>
								    		<td><?php echo $row['id']; ?></td>
								    		<td><?php echo $row['RolDetalle']; ?></td>
								    		<td><?php echo $row['Estado']; ?></td>
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
    function Texid(xd){
    $("#TextContenid").empty();
    	
    	$("#TextContenid").load("Rol/drivers.php",{tip01:2,ids:xd});	
    }
      function Texnuev(){
    $("#TextContenid").empty();    
    	$("#TextContenid").load("Rol/drivers.php",{tip01:1,ids:0});
    }
    </script>
	
</body>
</html>