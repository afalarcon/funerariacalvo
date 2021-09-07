<?php require_once("../class/clas_parametros.php");
$items042=new Parametros();
$datos042=$items042->recibos5($_POST['ids']);

$var1=$datos042['NroCierre'];
$var2=$datos042['VrReci'];
$var3=$datos042['NroReci'];

$items011=new Parametros();
$datos011=$items011->consu_beneficiarios($_POST['ids']);

$mysqli = new mysqli('localhost:3306','root','Tecnologia23*','appfcalvo');
  if($mysqli===false){
    die();
  }

  $sql="Select Motanul, Descm from recmot";
        $result3 = $mysqli->query($sql);
      $result3->num_rows>0;


?>
<div class="container">
  <div class="card">
    <div class="card-body">
      <div class="modal-header">
            <h4 class="modal-title"><div id="idtitulo01">Anular Recibo</div></h4>
                  
            <button type="button" class="close" data-dismiss="modal">X</button>
          </div>

		
		<?php 
		  if($var1==0){

			echo 'Recibo a anular Nro '.$var3.' por valor de $'.$var2;
      ?>
      <form id="form_anular" name="form_anular">

      <div class="col-md-5">
           
          <label class="control-label" style="position:relative; top:7px;">Usuario de Anulación:</label>
                    <input type="text" class="form-control form-control-sm  mb-3" name="Usuario" id="Usuario" required>
                    <input type="hidden" name="Rec" id="Rec" value="<?php echo $var3; ?>">
        </div>

        <div class="col-md-5">
           
          <label class="control-label" style="position:relative; top:7px;">Clave de Usuario de Anulación:</label>
                    <input type="text" class="form-control form-control-sm  mb-3" name="Clave" id="Clave" required>
        </div>
        <div class="col-md-5">
           
          <label class="control-label" style="position:relative; top:7px;">Motivo de Anulación:</label>
                    
                    <select class="form-control form-control-sm  mb-3" name="Motivo" id="Motivo" required>
                      <option value="0">Sin Motivo</option>
                      <?php while ($row3= $result3->fetch_array()) { ?>                      
                      <option value="<?php echo $id=$row3['Motanul']; ?>"> <?php echo $de=$row3['Descm']; ?></option>
                      <?php } ?>
                    </select>
        </div>
        <div class="col-md-5">
           
          <label class="control-label" style="position:relative; top:7px;">Observaciones:</label>
                    <textarea rows="4" cols="50" class="form-control form-control-sm  mb-3" name="Obs" id="Obs"></textarea>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="btnanular" name="btnanular" >Anular</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

      </form>
      <?php
			}else{
			?>
			<div class="alert alert-danger">
  			<strong>Atención!</strong> Este recibo ya se encuentra en un cierre por lo que no es posible anularlo.
			</div>
      <div class="modal-footer">
           
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
			<?php 
			}
		  ?>		         
	   	
		
    </div>
  </div>
</div>
<br>
<div id="respuesta022"></div>

    <script>

    $("#btnanular").click(function(){
      var Usuario=$("#Usuario").val();
      var Clave=$("#Clave").val();

      //alert(Usuario);
      if(Usuario==''){
        alert("El campo Usuario esta vacío");
        $("#Usuario").focus(); 
      }
      if(Clave==''){
       alert("El campo Clave esta vacío");
       $("#Clave").focus(); 
      }

      if(Usuario!='' && Clave!=''){

      var fom=$("#form_anular").serialize();
      $.ajax({
      url:"datos/anurec2.php",
      type: 'post',
      cache: false,
      data: fom,
      success: function(data)
      {
        //console.log(data);
      $("#respuesta022").fadeIn(1000).html(data);

      //$("#idtable01").load("indexr.php",id:data); 
      $("#respuesta001").fadeOut(3500);
      }
     });
      }
    });

    </script>


