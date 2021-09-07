<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>AppFCalvo V1</title>

	 <link href="data/vendor/Bootstrap/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	 <script src="data/vendor/Bootstrap/js/bootstrap.min.js"></script>
	 <script src="data/vendor/jquery/jquery.min.js"></script>
		
<script src="data/js/acceso.js"></script>

<style type="text/css">
    .login-form {
        width: 340px;
        margin: 50px auto;
    }

    .pull-right {
    float: right;
    padding-top: 150px;
    margin: 20px;
    }

    .login-form form {
        margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;

        border-radius: 20px 23px 23px 23px;
        -moz-border-radius: 20px 23px 23px 23px;
        -webkit-border-radius: 20px 23px 23px 23px;
        border: 0px solid #000000;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }

    .footer {
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 30px;
      background-color: #f7f7f7;
    }
    body{
        background: url(data/img/fondo.jpg) no-repeat center;
        background-size: 100% ;
        /*background-repeat: no-repeat;  */
    }
</style>

</head>

<body>

<div class="pull-right">
    <div class="login-form">
    <form id="loginForm" action="#" method="POST" class="bord">
		<div class="panel panel-info">
			<div class="panel-heading"><span class="glyphicon glyphicon-user " aria-hidden="true"></span><b> Iniciar Sesión</b> </div>
			<div class="panel-body bord">
				<hr>
				<div class="form-group has-primary has-feedback">
					<label class="control-label" for="login">Usuario <span class="regForm text-danger">*</span></label>
					<input type="input" class="form-control" name="login" id="login" aria-describedby="login" required placeholder="Usuario">
					<span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span>
				</div>
				<div class="form-group has-primary has-feedback">
					<label class="control-label" for="password">Contraseña <span class="regForm text-danger">*</span></label>
					<input type="password" class="form-control" name="password" id="password" aria-describedby="password" required placeholder="Contraseña">
					<span class="glyphicon glyphicon-lock form-control-feedback" aria-hidden="true"></span>
				</div>
			</div>
			<div class="panel-footer">
				<input type="button" class="btn btn-info" id="goToChat" value="Acceder" />
				<div id="Resp"></div>
				
			</div>
		</div>
	</form>
    </div>
</div>
	
  
</body>
</html>

