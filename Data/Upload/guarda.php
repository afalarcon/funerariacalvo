
<?php  
 $output = '';  
 if(is_array($_FILES))  
 {  
	$ficha=$_POST['fich'];  	
      foreach($_FILES['images']['name'] as $name => $value)  
      {  
           $file_name = explode(".", $_FILES['images']['name'][$name]);  
           $allowed_extension = array("jpg", "jpeg", "png", "gif");  
           if(in_array($file_name[1], $allowed_extension))  
           {  
                

                $new_name = rand() . '.'. $file_name[1];  
                $sourcePath = $_FILES["images"]["tmp_name"][$name];  
                
                $ruta='docs/'.$ficha;
                
                if (file_exists($ruta)) {
				    
				} else {
				    @mkdir($ruta, 0777, true);
				}

                $targetPath = "docs/$ficha/".$new_name;  
                move_uploaded_file($sourcePath, $targetPath);  
				        $conex=new mysqli("localhost","root","","appfcalvo");
                echo $query = "insert into images (NroFicha,img) values ($ficha,'$targetPath')";
                $resultado = $conex->query($query);
           }  
      }  
      echo 'Se guardaron las imagenes exitosamente a el contrato N°'.$ficha;
 }  
 ?>