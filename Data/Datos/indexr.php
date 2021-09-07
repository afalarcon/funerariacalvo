<?php
	include('config/empresa.php');
	$numero=1;
?>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="Script PHP para crear recibos de ingreso con PHP" />
    <meta name="author" content="Obed Alvarado" />

</head>
<body>
       <form class="form-horizontal" role="form" id="datos_recibo" method="post">
                <button type="button" class="btn btn-success ">Generar recibo</button>
		</form>

</body>
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/VentanaCentrada.js"></script>


<script type="text/javascript">

	$("#datos_recibo").submit(function(){
		  var cliente = $("#cliente").val();
		  var forma_pago = $("#forma_pago").val();
		  var numero = $("#numero").val();
		  var monto = $("#monto").val();
		  var concepto = $("#concepto").val();
		 
		VentanaCentrada('./pdf/documentos/recibo.php?cliente='+cliente+'&forma_pago='+forma_pago+'&numero='+numero+'&monto='+monto+'&concepto='+concepto,'Recibo','','1024','768','true');	
		 
		 
	 });
		

		
		
		
</script>
</html>
