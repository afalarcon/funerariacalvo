<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"><center><h5 class="modal-title" id="exampleModalLabel">Editar Usuario</h5></center>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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

								<form method="POST" action="edit.php?id=<?php echo $row['id']; ?>">
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Usuario:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm mb-3" name="Usuario" readonly value="<?php echo $row['NomUsuario']; ?>">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Clave:</label>
										</div>
										<div class="col-sm-10">
											<input type="password" class="form-control form-control-sm mb-3" name="Clave" value="<?php echo $row['PassUsuario']; ?>">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Nombre:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm mb-3" name="Nombre" value="<?php echo $row['Nombre']; ?>">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Apellido:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm mb-3" name="Apellido" value="<?php echo $row['Apellidos']; ?>">
										</div>
									</div>
							</div>
							<div class="col-md-6">

									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Correo:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm mb-3" name="Correo" value="<?php echo $row['Correo']; ?>">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Fecha:</label>
										</div>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-sm mb-3" name="Fecha" value="<?php echo $row['FechaRegis']; ?>" readonly>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-2">
											<label class="control-label" style="position:relative; top:7px;">Estado:</label>
										</div>
										<div class="col-sm-10">						
											<select class="form-control form-control-sm mb-3" name="Estado">
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
											<select class="form-control form-control-sm mb-3" name="Rol">
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
										</div>
									</div>

					        </div> 
						</div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> Cancelar</button>
					                <button type="submit" name="add" class="btn btn-primary"><span class="fa fa-save"></span> Guardar</a>
					                	<input type="submit" name="enviat">
								</form>

							</div>
						</div>
					</div>
				</div>	

            </div>

        </div>
    </div>
</div>
