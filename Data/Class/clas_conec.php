<?php
# CLASE PARA GESTIONAR LA BASE DE DATOS
class mysql
{
#____________________________________________________________________________soy_una_barra_separadora :)
    private $localhost = "localhost:3306";
    private $usuario = "root";
    private $password = "Tecnologia23*";
  private $database = "appfcalvo";
#____________________________________________________________________________soy_una_barra_separadora :)
    /* METODO PARA CONECTAR CON LA BASE DE DATOS*/
 public function conectar()
 {
  if(!isset($this->conexion)){
    $this->conexion = (mysqli_connect($this->localhost, $this->usuario,$this->password)) or die(mysqli_error() );
   mysqli_select_db($this->conexion,$this->database ) or die(mysql__error());
  }
 }
#____________________________________________________________________________soy_una_barra_separadora :)
 // METODO PARA REALIZAR UNA CONSULTA
 // INPUT: $q -> consulta
 // OUTPUT: $result
 public function consulta($q)
 {
    $resultado = mysqli_query($this->conexion,$q);
    if(!$resultado){
     echo 'MySQL Error: ' . mysqli_error();
     exit;
    }
    return $resultado;
 }
#____________________________________________________________________________soy_una_barra_separadora :)
 // METODO PARA CONTAR EL NUMERO DE FILAS DEVUELTAS
 // INPUT: $r
 // OUTPUT: numero de filas
 function numero_de_fila($result){
  if(is_resource($result))
            return false;
  return mysqli_num_rows($result);
 }
#____________________________________________________________________________soy_una_barra_separadora :)
  /* METODO PARA CERRAR LA CONEXION A LA BASE DE DATOS*/
 public function desconectar()
 {
  mysqli_close( $this->conexion );
  echo 'Conexion a ['.$this->name.'] : Terminado ';
 }

}
?>