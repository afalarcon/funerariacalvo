$(document).ready(function(){
$("#login").focus();

$("#goToChat").click(function(){

var Usur=$("#login").val();
var Clav=$("#password").val();
//fadeIn(1000)
$("#Resp").load("data/login/access.php",{usu:Usur,Pass:Clav});
$("#login").val('');$("#login").focus();
$("#password").val('');
//$("#Resp").fadeOut(3500);
});

});
