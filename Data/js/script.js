function agregardatos(usuario,clave,nombre,apellido,correo,fecha,estado,rol){

	cadena="usuario=" + usuario + 
	       "&clave=" + clave + 
	       "&nombre=" + nombre + 
	       "&apellido=" + apellido + 
	       "&correo=" + correo + 
	       "&fecha=" + fecha + 
	       "&estado=" + estado + 
	       "&rol= " + rol;


	$.ajax({
		type:"POST",
		url:"usuarios/add.php",
		data: cadena,
		success:function(r){

			if(r==1){
				alert("Agregado");
			}else{
				alert("Error");
			}
		}

	});
}