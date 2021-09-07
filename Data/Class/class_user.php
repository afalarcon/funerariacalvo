<?php 
require_once("clas_conec.php");

class Acceso extends mysql{

 function __construct()
{
	$this->conectar();
}

public function Usuario($usuario){	
	//'Prueba*125'
$user_pass =  $usuario;
$salt = md5($user_pass);
$pasword_encriptado = crypt($user_pass, $salt);

$descusu=$this->consulta("select Nombre,Apellidos,NomUsuario from segusuarios where  	NomUsuario ='$pasword_encriptado'");
$resul=mysqli_fetch_array($descusu);
return $resul; 
}

public function Clave($Clave){
$user_pass =  $Clave;
$salt = md5($user_pass);
$pasword_encriptado = crypt($user_pass, $salt);
$descClav=$this->consulta("select * from segusuarios where PassUsuario ='$pasword_encriptado'");
$resul001=mysqli_fetch_array($descClav);
return $resul001; 
}

}


class Usuarios extends mysql{

	function __construct()
   {
	   $this->conectar();
   }

public function NuevUsuario($usuario,$clave,$nombre,$apellido,$correo,$fecha,$estado,$rol){

	$user_pass =  $clave;
	$salt = md5($user_pass);
	$pasword_encriptado = crypt($user_pass, $salt);
	$users =  $usuario;
	$salt1 = md5($users);
	$Usuario_encriptado = crypt($users, $salt1);

	$newUser=$this->consulta("insert into segusuarios (NomUsuario,PassUsuario,Nombre,Apellidos,Correo,FechaRegis,Estado,SegRolid) values
	('$Usuario_encriptado','$pasword_encriptado','$nombre','$apellido','$correo','$fecha',$estado,'$rol')");
	return $newUser; 


}


}
?>