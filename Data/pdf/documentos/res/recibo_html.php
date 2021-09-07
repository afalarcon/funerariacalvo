<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }

.text-center{
	text-align:center
}
.text-right{
	text-align:right
}
table th, td{
	font-size:13px
}
.detalle td{
	padding:7px;
}

.border-bottom{
	border-bottom: solic 1px #bdc3c7;
}
.Estilo1 {
	font-size: 16px;
	font-weight: bold;
}
.Estilo3 {font-size: 12px}
.Estilo4 {font-size: 10px}
-->

  .round_table {
                    border-collapse:separate;
                    border-spacing: 10;
                    border:solid black 1px;
                    border-radius:10px;
                    -moz-border-radius:10px;
                    -webkit-border-radius: 5px;    
                }

</style>
<page backtop="2mm" backbottom="2mm" backleft="2mm" backright="2mm" style="font-size: 11pt; font-family: arial" >
    <table cellspacing="0" style="width: 100%;" class="round_table">
        <tr>
            <td rowspan="2"  style="width: 33%; color: #444444;">
                <img style="width:95%;" src="../../img/logo.png" alt="Logo" align="left"><br>            </td>
	    </tr>
        <tr>
           <td rowspan="2"  style="width: 68%; color: #444444;">
                <img style="width:95%;" src="../../img/logo2.png" alt="Logo"><br>            </td>
        </tr>
    </table>
    
	<hr style="display: block;height: 1px;border: 1px solid #bdc3c7;    margin: 0.5em ;    padding: 0;">
	<table cellspacing="0" style="width: 100%;">
        <tr>
            <td  style="width: 20%; ">               
            </td>
			<td style="width: 60%;text-align:center;font-size:18px;color:#3F51B5; padding:10px; border-radius: 7px ">
			<span class="Estilo3"></span></td>
      </tr>
    </table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table cellspacing="0" style="width: 100%;">
        <tr>
            <td  style="width: 50%; ">			</td>
<td  style="width: 16%;color:white;background-color:#412856;padding:5px;text-align:center "> 
				<span style="font-size: 12px"><strong style="font-size:14px;" >CONTRATO #</strong></span></td>
<td  style="width: 16%;color:white;background-color:#412856;padding:5px;text-align:center "> 
				<span style="font-size: 12px"><strong style="font-size:14px;" >RECIBO #</strong></span></td>
<td  style="width: 16%; color:white;background-color:#412856;padding:5px;text-align:center " > 
				<span style="font-size: 12px"><strong style="font-size:14px;">FECHA</strong></span></td>
   	  </tr>
		<tr>
            <td  style="width: 50%; ">			</td>
			<td  style="width: 15%;padding:5px;text-align:center;border:solid 1px #bdc3c7;font-size:12px"> 
				<?php echo $contrato;?>			</td>
			<td  style="width: 15%;padding:5px;text-align:center;border:solid 1px #bdc3c7;font-size:12px"> 
				<?php echo $numero;?>			</td>
			<td  style="width: 20%;padding:5px;text-align:center;border:solid 1px #bdc3c7;font-size:12px " > 
				<?php echo date("d/m/Y");?>			</td>
		</tr>
    </table>
	
	<br>
	<table cellspacing="0" style="width: 100%;" class="detalle">
		<tr>
            <td  style="width: 15%; "><strong>Recibí de: </strong></td>
			<td  style="width: 55%; " class="border-bottom"> 
				<?php echo $cliente;?> - <?php echo $NroIden;?></td>
			<td  style="width: 15%; text-align:right"> 
				<strong>Cantidad: </strong></td>
			<td  style="width: 15%;border: solid 1px #bdc3c7" > <?php echo simbolo_moneda;?>
				<?php echo number_format($monto,2);?></td>
		</tr>
		<tr>
            <td  style="width: 15%; "><strong>La suma de: </strong></td>
			<td  style="width: 85%; " colspan=3 class="border-bottom"> 
				<?php $monto=number_format($monto,2,'.','');
					echo   $letras = NumeroALetras::convertir($monto,nombre_moneda,'centavos'); ?></td>
		</tr>
		<tr>
            <td  style="width: 15%; "><strong>Concepto: </strong></td>
			<td  style="width: 85%; " colspan=3 class="border-bottom"><?php echo $concepto;?></td>	
		</tr>
		<tr>
            <td  style="width: 15%; "></td>
			<td  style="width: 70%; text-align:right" colspan=3 > 
				<strong>Forma de pago: </strong> 
				Efectivo [<?php if ($forma_pago==1){echo "x";}?>] - Transferencia [<?php if ($forma_pago==3){echo "x";}?>]	</td>	
		</tr>
		<tr>
		  <td colspan="4"><span class="Estilo3">Meses atrasados_______________Su pago HOY le da derecho a partir del _______________</span></td>
        </tr>
      	<tr>
      	  <td colspan="4"><span class="Estilo3">CAUSA PARA NO TENER DERECHO A LOS SERVICIOS POR INCUMPLIMIENTO:</span></td>
        </tr>
	    <tr>
      	  <td colspan="4"><p align="center" class="Estilo4">Si no está al día en los pagos o se ha puesto al día fuera de las fechas indicadas / <strong>PRÓXIMO PAGO FECHA LÍMITE <?php echo $periodo;?></strong></p>
   	      </td>
      </tr>
		<tr>
            <td  style="width: 15%; "><strong>Recibido por: </strong></td>
			<td  style="width: 70%; " colspan=2 >____________________________</td>
		</tr>
		<tr>
            <td  style="width: 15%; "></td>
			<td  style="width: 70%;padding-top:-15px " colspan=2 >	<br>
<?php echo $userr;?></td>
		</tr>
		<tr>
			<td  align="right" colspan=4  ><span class="Estilo4">En caso de reclamo debe presentar su último recibo de pago</span></td>
		</tr>
    </table>
	<div style="width:100%; border-top:dashed 1px;margin-top:1mm;margin-bottom:1mm" > </div>
</page>