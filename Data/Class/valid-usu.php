<?php 
require_once("class_user.php");


/*$datos=new Enigma();
echo $cadena_encriptada = Enigma::encrypt($_POST['password']);  
$dato_importante = Enigma::decrypt($cadena_encriptada); 
*/

$items001=new Usuarios();
if($validacion001=$items001->usuarios($_POST['user1'])==true)
{
$validacion002=$items001->usuarios($_POST['user1']);


if($_POST['user1']<>$validacion002['pass'] )
{	?> <script> 	$("#resul-001").fadeIn(1000).html("<div class='alert alert-danger'>Contraseña incorrecta</div>"); 
$("#resul-001").fadeOut(3500);
$("#textclave").val('');$("#textclave").focus();</script>
<?php 
}
if($_POST['pasw']==$validacion002['pass'] && $_POST['user1']==$validacion002['UserNam'] )
{
session_start(); 
 $_SESSION['usuario']=$validacion002[0];

	?>
<script>
	window.location.replace('vistas/') ;  </script>
<?php
}


}else{
	?>
<script> 	$("#resul-001").fadeIn(1000).html("<div class='alert alert-danger'>Usuario y/o Contraseña incorrectos</div>"); 
$("#resul-001").fadeOut(3500);
$("#textclave").val('');
$("#textusu").val('')
$("#textusu").focus();
</script>

	<?php
}

 ?>