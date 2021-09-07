
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
            	<h5 class="modal-title" id="exampleModalLabel">Adicionar Usuarios</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		        <?php $hoy = date("Y-m-d"); ?>
		        <?php
						include_once('../Conexion/connection.php');
						$database = new Connection();
    					$db = $database->open();
						try{	
						    $sql = 'SELECT * FROM segrol WHERE Estado = 1';
						    
						    	?>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
				
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6">		


									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Usuario:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm  mb-3" name="Usuario" id="Usuario">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Clave:</label>
										</div>
										<div class="col-sm-10">
											<input type="password" class="form-control form-control-sm  mb-3" name="Clave" id="Clave">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Nombre:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm  mb-3" name="Nombre" id="Nombre">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Apellido:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm  mb-3" name="Apellido" id="Apellido">
										</div>
									</div>
								</div>
								<div class="col-md-6">

									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Correo:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm  mb-3" name="Correo" id="Correo">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Fecha:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm  mb-3" id="Fecha" name="Fecha" value="<?php echo $hoy; ?>" readonly >
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Estado:</label>
										</div>
										<div class="col-sm-10">						
											<select class="form-control form-control-sm  mb-3" name="Estado" id="Estado">
											  <option value="1">Activo</option>
											  <option value="0">Inactivo</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Rol:</label>
										</div>
										<div class="col-sm-10">
											<select class="form-control form-control-sm  mb-3" name="Rol" id="Rol">
												<?php foreach ($db->query($sql) as $row) { ?>
											  <option value="<?php echo $row['id']; ?>"><?php echo $row['RolDetalle']; ?></option>
											  <?php 
											    }
											}
											catch(PDOException $e){
												echo "There is some problem in connection: " . $e->getMessage();
											}
											$database->close();
										?>
											</select>
											<div class="modal-footer">
								            
											<button type="button" class="btn btn-default" id="guardarnuevo">Guardar</button>							
											</div>							
				
										</div>
									</div>
					            </div> 
							</div>
					</div>
				</div>
			</div>	
            </div>
        </div>
    </div>
</div>


