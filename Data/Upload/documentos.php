<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Subir multiples imágenes</h4>
</div>
<div class="modal-body">
	
<form method="POST" id="upload_form">
	<input type="hidden" name="fich" value="<?php echo $_POST['ids']; ?>">
<label>Seleccion las imágenes</label>
<input type="file" name="images[]" id="img_select" multiple class='form-control'>
</form>
</div>
	<div id="image_gallery">

</div>


<script>
$(document).ready(function(){
 $('#img_select').change(function(){
 $('#upload_form').submit();
 });
 $('#upload_form').on('submit', function(e){
 e.preventDefault();
     $.ajax({
 url : "upload/guarda.php",
 method : "POST",
 data: new FormData(this),
 contentType:false,
 processData:false,
 success: function(data){
 $('#img_select').val('');  
                $('#src_img_upload').modal('hide');  
                $('#image_gallery').html(data); 
 }
 })
 });
});
</script>
