<?php 
require_once("clas_conec.php");


class Factura extends mysql
{

function __construct()
{
$this->conectar();
}

public function Empresa()
{
	$factu001=$this->consulta("SELECT * FROM `empresa` WHERE 1");
          $row001=mysqli_fetch_array($factu001);
return @$row001;
}

public function datos_contador_factura($medidor)
{

$factu002=$this->consulta("SELECT * FROM `datos` a
inner join usuarios b on a.`Usuarios_idUsuarios`=b.idUsuarios
inner join medidores c on a.`Medidores_idMedidores`=c.idMedidores
inner join factcon d on a.`CodDU`=d.CodDU
inner join tippred e on a.`Predios_idPredios`=e.idTipPred
inner join extracto f on a.`Usuarios_Extracto_idExtracto`=f.idExtracto
inner join barrio g on a.`Usuarios_Barrio_idBarrio`=g.idBarrio
WHERE c.Descripcion='$medidor' and d.EstCob<>1");
          $row002=mysqli_fetch_array($factu002);
return @$row002;

}

public function cargar_indicador($idun)
{
		$factu003=$this->consulta("SELECT `Per_Con`, `Cons` FROM `factcon` WHERE `CodDU`='$idun'
order by id desc
limit 6 ");
	while($row003=mysqli_fetch_array($factu003))
	{
		$this->result001[]=$row003;
	}
	return @$this->result001;
}



}

