<?php 
require_once("../../class/clas_parametros.php");
$items003=new Parametros();
$valor001=$items003->consultar_extracto($_POST['ids']);

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
  <script>
var tipos="<?php echo  $_POST['tip01']; ?>";
if(tipos==1){
  $("#idtitulo01").html("Nuevo Estrato");
}else if(tipos==2)
{
  $("#idtitulo01").html("Actualizar Estrato");
}

  </script>
</head>
<body>
	<div class="panel panel-info">
  <div class="panel-heading" id="idtitulo01"></div>
  <div class="panel-body">

<form id="form_edt_nuv" name="form_edt_nuv">
<input type="hidden" id="tips" name="tips" value="<?php echo  $_POST['tip01']; ?>">
<input type="hidden" id="idtip" name="idtip" value="<?php echo  $_POST['ids']; ?>">
  <div class="form-group">
    <label for="exampleInputEmail1">Descripcion Estrato</label>
    <input type="email" class="form-control" id="textbarrio" name="textbarrio" value='<?php echo $valor001[1]; ?>'>
  </div>
     <label for="exampleInputEmail1">Estado</label>
   <input name="estado1" type="hidden" value="1">
   
     </div>
  
  <?php if($_POST['tip01']==1){ ?>
  <button type="button" class="btn btn-primary" id="btnnuevo" name="btnnuevo">Nuevo Registro</button>
<?php }else if($_POST['tip01']==2){?>
<button type="button" class="btn btn-primary" id="btnactualiz" name="btnactualiz">Actualizar</button>
<?php } ?>


</form>
<div id="respuesta001"></div>

<hr>

  </div>
</body>
</html>
<script>
  $("#btnnuevo").click(function(){
var textbarr=$("#textbarrio").val();
var textstad=$("#estado1").val();
if(textbarr==''){alert("El campo Descripcion Estrato no debe estar vacio.."); $("#textbarrio").focus(); }else
if(textstad==''){alert("El campo Estado Estrato no debe estar vacio.."); $("#estado1").focus(); }else
{
  var fomr=$("#form_edt_nuv").serialize();
  $.ajax({
    url:"extracto/sql_edit_nuev.php",
type: 'post',
cache: false,
data: fomr,
success: function(data)
{
$("#respuesta001").fadeIn(1000).html(data);
$("#form_edt_nuv").each(function(){
  this.reset();
})
$("#textbarrio").focus();
$("#idtable001").load("extracto/tabla_datos.php"); 
$("#respuesta001").fadeOut(3500);
}
  });
}
  });


$("#btnactualiz").click(function(){
var textbarr=$("#textbarrio").val();
if(textbarr==''){alert("El campo Descripcion Estrato no debe estar vacio.."); $("#textbarrio").focus(); }else
{
  var fomr1=$("#form_edt_nuv").serialize();
  $.ajax({
    url:"extracto/sql_edit_nuev.php",
type: 'post',
cache: false,
data: fomr1,
success: function(data)
{
$("#respuesta001").fadeIn(1000).html(data);

$("#idtable001").load("extracto/tabla_datos.php"); 
$("#respuesta001").fadeOut(3500);
}

  });

}
  });

</script>
