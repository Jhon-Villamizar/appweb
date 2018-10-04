<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tiposdeusuarios extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		/* Vamos a usar la librera crud grocery. 
		
		Debemos cargar inicialmente la libraria con el metodo load
		
		*/ 
		$this->load->library("grocery_CRUD");
		/* 
		Es posible que la libraria crud la usemos en toda la clase entonces
		la instanciamos en el constructor
		*/ 
		$this->crud=new grocery_CRUD();

		if (!$this->session->userdata("id")) {
			redirect('login');
		}
	}

	public function index()  // por defecto entra al controlador
	{
		$vector['nombre']="JUAN FERNANDO FERNANDEZ ALVAREZ";
		$vector['fecha']=date("c");
		$vector['titulo']="Appweb";
		$vector['remate']=date("Y");
		$vector["nombreusuario"]=$this->session->userdata("nombrecompleto");
		
		/* 
		Cargar Los parametros de configuracion
		que se necesitan para generar el crud de este controlador
		*/ 
		// 1. definir la tabla que vamos a cargar
		$this->crud->set_table("tbltiposusuarios");
		// 2. colocarle un titulo al crud
		$this->crud->set_subject("Listado de tipos de usuarios");
		// 3. definir la presentacion. Se puede usar datatables o flexigrid
		$this->crud->set_theme("flexigrid");
		// 4. esta herramienta genera una funcion que se llama render
		$tabla=$this->crud->render();
		// 5. cuando se ejecuta el render, la herramienta arroja tres vectores:
		// output: que es el espacio grafico del crud
		// css_files: las rutas donde se encuentra la capa de estilos de la herrmienta
		// js_files: las rutas js de la herramienta para realizar las operaciones
		// 6. trasladar estas tres variables que salen de tabla hacia el vector
		// que traslada los datos a la vista
		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;


		$this->load->view('tiposdeusuarios',$vector);
	}
}





