		<div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="table-responsive p-3">
					<a href="#addnew" class="btn btn-info btn-sm" data-toggle="modal"><span class="fa fa-plus"></span> Nuevo</a>
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
								    		<?php include('delete_modal.php'); 
									    		  include('edit_modal.php'); 
									    		  include('add_modal.php');	   	
								    		?>
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
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });
  </script>


  
  <script type="text/javascript">
  $(document).ready(function(){
      $('#guardarnuevo').click(function(){
        usuario=$('#Usuario').val();
        clave=$('#Clave').val();
        nombre=$('#Nombre').val();
        apellido=$('#Apellido').val();
        correo=$('#Correo').val();
        fecha=$('#Fecha').val();
        estado=$('#Estado').val();
        rol=$('#Rol').val();


        agregardatos(usuario,clave,nombre,apellido,correo,fecha,estado,rol);
      });

  });

  function agregardatos(usuario,clave,nombre,apellido,correo,fecha,estado,rol){

	cadena="Usuario=" + usuario + 
	       "&Clave=" + clave + 
	       "&Nombre=" + nombre + 
	       "&Apellido=" + apellido + 
	       "&Correo=" + correo + 
	       "&Fecha=" + fecha + 
	       "&Estado=" + estado + 
	       "&Rol= " + rol;


	$.ajax({
		type:"POST",
		url:"Usuarios/add.php",
		data: cadena,
		success:function(r){

			if(r==1){
				$('#MainConteni').load('Control.php');
				alert("Agregado");
			}else{
				alert("Error");
			}
		}

	});
}

</script>