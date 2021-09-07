<?php
require_once("../Class/class_user.php");


$ObjetoLogin = new Acceso();
$return=$ObjetoLogin->Usuario($_POST["usu"]);
$returnClav=$ObjetoLogin->Clave($_POST["Pass"]);



if($return!="" && $returnClav!=""){
	session_start();
	$_SESSION['usuario']=$return;
?>
<script>
	window.location ="data/home.php";
</script>
<?php
}else{
	echo "<div class='alert alert-danger'>El Usuario y/o la clave son incorrectas</div>";
}


?>