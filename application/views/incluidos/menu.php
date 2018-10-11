<?php
/*
Script que guarda el menu, el perfil rapido y los botones inferiores del menu
*/
?>

        <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span><?php echo $titulo;?></span></a>
            </div>
        
            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="http://nakoko.com/wp-content/uploads/2016/07/cara-kakashi-640x400.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2><?php echo $nombreusuario;?></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->
       <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Menú Principal</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> Maestros <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<?php echo site_url('tiposdeusuarios');?>">Tipos de usuarios</a></li>
                      <li><a href="<?php echo site_url('tiposdeclientes')?>">Tipos de clientes</a></li>
                      <li><a href="<?php echo site_url('categoriasdeproductos')?>">Categorías de productos</a></li>
                      <li><a href="<?php echo site_url('tiposdeidentificacion');?>">Tipos de identificación</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Administrativos <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<?php echo site_url('clientes');?>">Clientes</a></li>
                      <li><a href="<?php echo site_url('productos');?>">Productos</a></li>
                      <li><a href="<?php echo site_url('usuarios');?>">Usuarios</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Gestión <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<?php echo site_url('pedidos');?>">Pedidos</a></li>
                      <li><a href="<?php echo site_url('informes');?>">Informes</a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

               <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Configuraciones">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Salir" href="<?php echo site_url('salir');?>">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
