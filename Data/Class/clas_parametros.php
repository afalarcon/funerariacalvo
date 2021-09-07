<?php 
require_once("clas_conec.php");

class Parametros extends mysql
{

function __construct()
{
$this->conectar();
}




public function consu_titulares()
{
	$parame001=$this->consulta("SELECT * FROM `contitular`");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_tipos()
{
	$parame001=$this->consulta("SELECT * FROM `tipid`");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_mncp()
{
	$parame001=$this->consulta("SELECT * FROM `mncio`");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_depto()
{
	$parame001=$this->consulta("SELECT * FROM `deptos`");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function titulares($tip01)
{
	$parame001=$this->consulta("select * from `contitular` a 
		left join `zonas` b on a.idZonas = b.idZonas 
		left join `tipid` c on a.idTipId = c.idTipId 
		left join `mncio` d on a.idMncio = d.idMncio 
		left join `deptos` e on d.DEPTOS_idDEPTOS = e.idDEPTOS
		where NroFicha = $tip01");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function recibos1($tit)
{
	$parame001=$this->consulta("SELECT * FROM `contitular` a
			left join `idvgpltit` b on b.NroFiTit = a.NroFicha
			where NroFicha = $tit");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}

public function recibos2($tiy)
{
	$parame001=$this->consulta("SELECT * FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			where a.NroFicha=$tiy");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_zonas()
{
	$parame001=$this->consulta("SELECT * FROM `zonas`");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}

public function actual_titular($Ficha,$zona,$afiliacion,$tipoid,$identificacion,$apellido1,$apellido2,$nombre1,$nombre2,$direccion,$minicipio,
								$departamento,$telefono,$nacimiento,$contrato,$estado,$interno)
{
	$parame003=$this->consulta("update contitular set 
												idZonas= $zona,
												FeAfil = '$afiliacion',
												idTipId= '$tipoid', 
												NoIden = '$identificacion', 
												PriApe = '$apellido1', 
												SegApe = '$apellido2',
												PriNom = '$nombre1',
												SegNom = '$nombre2',
												DirTit = '$direccion',
												idMncio = $minicipio,
												idDEPTOS = $departamento,
												TelTit = '$telefono',
												FNacTit = '$nacimiento',
												TipFic = '$contrato',
												EstFic = $estado,
												Interno =  $interno
								where NroFicha=$Ficha");
	return @$parame003;
}


public function nuev_titular($zona,$afiliacion,$tipoid,$identificacion,$apellido1,$apellido2,$nombre1,$nombre2,$direccion,$minicipio,
								$departamento,$telefono,$nacimiento,$contrato,$estado,$interno)
{
	$parame002=$this->consulta("insert into contitular (  idZonas, FeAfil, idTipId, NoIden,	PriApe,	SegApe,	PriNom,	SegNom, DirTit, idMncio, idDEPTOS, 							TelTit, FNacTit, TipFic, EstFic, Interno ) 
												value(  $zona, '$afiliacion',  '$tipoid', '$identificacion',  '$apellido1', '$apellido2', '$nombre1',
												'$nombre2', '$direccion', $minicipio, $departamento,'$telefono', '$nacimiento', '$contrato', $estado, $interno)");
		return @$parame002;
}

public function consu_beneficiarios($idb)
{
	$parame001=$this->consulta("SELECT * FROM `conbenef` where NroFicha = $idb");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}

public function nuev_beneficiario($Ficha,$zona,$afiliacion,$tipoid,$identificacion,$apellido1,$apellido2,$nombre1,$nombre2,$direccion,$minicipio,
								$departamento,$telefono,$nacimiento,$contrato,$estado)
{
	$parame002=$this->consulta("insert into conbenef (NroFicha,  idZonas, FeAfil, idTipId, NoIden, PriApe, SegApe, PriNom, SegNom, DirBen ,  	idMncio,  	idDEPTOS,TelBen, FNacBen, TipFic, EstFic) 
												value($Ficha,  $zona, '$afiliacion',  '$tipoid', '$identificacion',  '$apellido1', '$apellido2', '$nombre1',
												'$nombre2', '$direccion', $minicipio, $departamento,'$telefono', '$nacimiento', '$contrato', $estado)");
		return @$parame002;
}

public function actual_beneficiario($Ficha,$zona,$afiliacion,$tipoid,$identificacion,$apellido1,$apellido2,$nombre1,$nombre2,$direccion,$minicipio,
								$departamento,$telefono,$nacimiento,$contrato,$estado)
{
	$parame003=$this->consulta("update conbenef set 
												idZonas= $zona,
												FeAfil = '$afiliacion',
												idTipId= '$tipoid', 
												PriApe = '$apellido1', 
												SegApe = '$apellido2',
												PriNom = '$nombre1',
												SegNom = '$nombre2',
												DirBen = '$direccion',
												idMncio = $minicipio,
												idDEPTOS = $departamento,
												TelBen  = '$telefono',
												FNacBen = '$nacimiento',
												TipFic = '$contrato',
												EstFic = $estado
								where NroFicha=$Ficha and NoIden = '$identificacion'");
	return @$parame003;
}

public function beneficiarios($tip01)
{
	$parame001=$this->consulta("select * from `conbenef` a 
		left join `zonas` b on a.idZonas = b.idZonas 
		left join `tipid` c on a.idTipId = c.idTipId 
		left join `mncio` d on a.idMncio = d.idMncio 
		left join `deptos` e on d.DEPTOS_idDEPTOS = e.idDEPTOS
		where NoIden = $tip01");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function nuev_recibo($Ficha,$Fecha,$id,$forma_pago,$monto,$concepto)
{
	$parame002=$this->consulta("insert into recibos (NroFicha, fecha, NoIden, Fpago, VrReci, Concepto  ) 
												value($Ficha,$Fecha,$id,$forma_pago,$monto,$concepto)");
		return @$parame002;
}

public function consu_recibos($Nro)
{
	$parame002=$this->consulta("SELECT * FROM `recibos` as a 
			LEFT JOIN `contitular` as b on a.NroFicha = b.NroFicha and a.NoIden = b.NoIden
			where a.NroReci in  (SELECT max(NroReci) FROM `recibos` where NroFicha = $Nro)");
		return @$parame002;
}

public function consu_cierres()
{
	$parame001=$this->consulta("SELECT * FROM `cierre` AS A 
	LEFT JOIN segusuarios AS B ON A.UserEnv = B.NomUsuario");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_usuarios()
{
	$parame001=$this->consulta("SELECT * FROM `segusuarios` where Estado=1");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function consu_ciesfech()
{
	$parame001=$this->consulta("SELECT DISTINCT fecha FROM `recibos` where Estado=1 and NroCierre = 0 order by 1");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function recibos3($tiq)
{
	$parame001=$this->consulta("SELECT max(periodo) as periodo FROM `periodos` 
			where NroFicha=$tiq");
	$rows001=mysqli_fetch_array($parame001);
	
	return $rows001;
}


public function ListaPeriodos(){

$period=$this->consulta("select * from periodos");
while($rows002=mysqli_fetch_array($period)){
	$this->result002[] = $rows002;
}
return @$this->result002;

}


public function recibos4($tiq)

{

	
	$parame001=$this->consulta("SELECT * FROM `periodos` as a 
		left JOIN `contitular` as b on b.NoIden = a.IdUser where a.NroFicha=$tiq");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function recibos5($tiq)
{
	$parame001=$this->consulta("SELECT NroCierre, VrReci,NroReci FROM `recibos`  
			where NroReci=$tiq");
	$rows001=mysqli_fetch_array($parame001);
	
	return $rows001;
}


public function Planes()
{
	$parame001=$this->consulta("SELECT idVigPlan Vigencia, VrlVig, DetVig, DesPlan FROM vigplan as a 
LEFT JOIN planes as b on b.idPlanes = a.idPlanes and EstPlan = 1
where EstVigen = 1 ");
	while($rows001=mysqli_fetch_array($parame001))
	{
		$this->result001[]=$rows001;
	}
	return @$this->result001;
}


public function Cambiavlr($cas,$plan,$fic,$VrAlt,$NBen)
{	

	$parame003=$this->consulta("select * from  idvgpltit  where NroFiTit = $fic");

	if($this->numero_de_fila($parame003)>=1){


			$parame003=$this->consulta("update idvgpltit set VrAlterno = $VrAlt, CanBen = $NBen where NroFiTit = $fic");
		
	}else {
			$parame003=$this->consulta("insert into idvgpltit  (IdVgPlTit,idPlanes,NroFiTit,VrAlterno,CanBen) 
												value   ($cas,$plan,$fic,$VrAlt,$NBen)");
	}

	return @$parame003;


}


}


?>

