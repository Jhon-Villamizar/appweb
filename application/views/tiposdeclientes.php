<html lang="en">
  <head>
<?php include("incluidos/header.php");?>
<?php
if (isset($css_files)) {
  foreach ($css_files as $ruta_css) {
      ?>
      
      <link rel="stylesheet" type="text/css" href="<?php echo $ruta_css?>">

      <?php
  }
}

?>
   </head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <?php include("incluidos/menu.php");?>
          </div>
        </div>
          <?php include("incluidos/nav.php");?>
        <!-- page content -->
        <div class="right_col" role="main">
    <?php echo $tabla;?>
          </div>
        </div>
        <!-- /page content -->
<?php include("incluidos/remate.php");?>
      </div>
    </div>
<?php include("incluidos/js.php");?> 
<?php
if (isset($js_files)) {
  foreach ($js_files as $ruta_js) {
    ?>
    <script type="text/javascript" src="<?php echo $ruta_js?>"></script>
    <?php
  }
}
?>

  </body>
</html>
