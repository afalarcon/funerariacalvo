<?php include('global/Sessiones.php'); 
$sess=$_SESSION['usuario'];
list($us)=$sess;
?>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>AppFCalvo</title>
    <link href="css/ruang-admin.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <link href="css/Home.css" rel="stylesheet">
    <link href="css/sweetalert2.min.css" rel="stylesheet">
 
    <script src="js/script.js"></script>

<script type="text/javascript">

function ifm()
{
  $("#MainConteni").load("Usuariosd/access.php");
}
function ifp()
{
  $("#MainConteni").load("Rol/access.php");
}
function ift()
{
  $("#MainConteni").load("Datos/main.php");
}
function ifc()
{
  $("#MainConteni").load("Cuadre/main.php");
}
</script>
</head>

<body>

<nav class="navbar navbar-icon-top navbar-expand-lg navbar-light" style="background-color: #f5f5f5;">
  <a class="navbar-brand" href="#"></a>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
    </ul>
    <ul class="navbar-nav ml-auto">
            <div class="topbar-divider d-none d-sm-block" style="border-right: 1px solid black"></div>
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false" >
                <img class="img-profile rounded-circle" src="img/boy.png" style="max-width: 60px;height:2rem;width: 2rem; border: 1px solid black">
                <span class="ml-2 d-none d-lg-inline text-black small"><?php echo $us; ?></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="global/cerrar.php">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
 
  </div>
</nav>




<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#"> AppFCalvo</a>
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
         
        </div>
        <div class="user-info">
          <span class="user-dname">Usuario: <?php echo $us; ?>           
          </span>
         <!-- <span class="user-role">Usuario</span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>-->
        </div>
      </div>
      <!-- sidebar-header  -->
    
      <!-- sidebar-search  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-tachometer-alt"></i>
              <span>Administrador</span>
              
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#" onclick="ifm()">Usuarios
                    
                  </a>
                </li>
                <li>
                  <a href="#" onclick="ifp()">Roles</a>
                </li>
                <li>
                  <a href="#" onclick="ifh()">Parametros</a>
                </li>
                <li>
                  <a href="#" onclick="ifh()">Mantenimiento</a>
                </li>
              </ul>
            </div>
          </li>
         
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-tachometer-alt"></i>
              <span>Procesos</span>
              
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#" onclick="ift()">Contratos
                    
                  </a>
                </li>
                <li>
                  <a href="#" onclick="ifc()">Cierres</a>
                </li>
                
              </ul>
            </div>
          </li>


          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-tachometer-alt"></i>
              <span>Reportes</span>
              
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Informes
                    
                  </a>
                </li>
                                
              </ul>
            </div>
          </li>




          <li class="header-menu">
            <span>Extra</span>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-book"></i>
              <span>Documentation</span>
              <span class="badge badge-pill badge-primary">Beta</span>
            </a>
          </li>
          
        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
    <!-- sidebar-content  -->
  


    
  </nav>


 



  <!-- sidebar-wrapper  -->
  <main class="page-content">
    <div class="container-fluid">
     
   

    <div id="MainConteni" class="container-2">    </div>

   

    </div>
  </main>


  
  <!-- page-content" -->
</div>

<footer class="text-center">
        <div class="mb-2">
          <small>
            © <?php echo date('Y') ?> Desarrollo a la medida AppFCalvo <i class="fa fa-heart" style="color:red"></i> 
          </small>
        </div>
      
      </footer>

<!-- page-wrapper -->


<script src="vendor/jquery/jquery.min.js" crossorigin="anonymous"></script>
<script src="js/Home.js" crossorigin="anonymous"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js" crossorigin="anonymous" ></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js" crossorigin="anonymous"></script>
  <script src="js/ruang-admin.min.js"></script>
  <!-- Page level plugins -->
  <script src="js/sweetalert2.all.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>

  <script type="text/javascript">
        $(document).ready(function(){
        $(".sidebar-toggle").click(function(){
            $(this).hide();
            
           $("#user-profil").show();
            
           $("#hide-btn").show();
            
           $(".container-2").css("width", "85%");
             
        });
        
        $("#hide-btn").click(function(){
            $(this).hide();
            
           $("#user-profil").hide();
            
           $(".sidebar-toggle").show();
            
           $(".container-2").css("width", "100%");
             
        });
    });


</script>

  <script>
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
     

  


    });


function MSJes(posicion,iconos,msje)
{
  Swal.fire({
  position: posicion,
  icon: iconos,
  title: msje,
  showConfirmButton: false,
  timer: 1500
})
}

  </script>
 



<script type="text/javascript" src="js/VentanaCentrada.js"></script>
</body>

</html>

<!-- Llamado a Modal -->


<div id="ModalPrinci" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" id="TamañoMdl">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <div id="TextContenid"></div>

    <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar Ventana</button>
    </div>
  </div>
</div>