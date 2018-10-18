<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/* 
Controlador principal que lo que hace es cargar una vista que contenga 
imagenes, nuestro nombre y la fecha del sistema
Se Recomienda siempre desde el controlador hacer las operaciones, invocaciones, cargas de bases de datos y luego pasar esa informacion a la vista. tratar en lo posible que la vista sea solo datos.
En este framework, los datos se pasar en un vector.
Como la carpeta views no es visible desde la web, las imagenes, estilos y javascript se tiene que cargar por fuera de ella.
De ahi que en la raiz del framework sea una carpeta que contenga estos datos
Esa carpeta la llaman assets, resources o contenidos, elements, etc
Por nomenclatura internacional, se usa mas assets.
Y al momento de usar esta carpeta debemos configurar la ruta base
o base url en el config.php
*/

class Principal extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		// metodo para validar que si se encuentra logueado lo deje pasar al controlador o lo devuelva a la pagina login
		if (!$this->session->userdata("id")) {
			redirect('login');
		}
	}

	public function index()  // por defecto entra al controlador
	{


		// esta funcion permite cargar la vista
		// para pasar parametros a una vista, se usa arrays o vectores
		// y se invoca despues del nombre de la vista
		$vector['nombre']="JUAN FERNANDO FERNANDEZ ALVAREZ";
		$vector['fecha']=date("c");
		$vector['titulo']="Appweb";
		$vector['remate']=date("Y");
		// pasar los datos del usuario que esta en las variables de session
		$vector["nombreusuario"]=$this->session->userdata("nombrecompleto");
		$vector["fotousuario"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("id");
		$this->load->view('principal',$vector);

	}
}





