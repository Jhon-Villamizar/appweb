<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $titulo?></title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url();?>assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?php echo base_url();?>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?php echo base_url();?>assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?php echo base_url();?>assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?php echo base_url();?>assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="<?php echo site_url('login/acceso/');?>" name="frm" id="frm" method="post">
              <h1><?php echo $titulo?></h1>
              <div>
                <input type="email" class="form-control" placeholder="Correo" required="" name="usuario" id="usuario"  autocomplete="off" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Contraseña" required="" name="clave" id="clave" autocomplete="off" />
              </div>
              <div>
                <button type="submit" class="btn btn-default submit">Ingresar</button>

                <a class="reset_pass" href="#">Olvido su contraseña?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
              
            
                <div>
                  <h1><i class="fa fa-paw"></i> <?php echo $titulo?></h1>
                  <p>©<?php echo $remate?>. Todos los Derechos Reservados. Sistema Appweb Clase Web II Cesde </p>
                </div>
              </div>
            </form>
          </section>
        </div>

      </div>
    </div>
  </body>
</html>
