<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Productos extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		$this->load->library("grocery_CRUD");
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
		$vector["fotousuario"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("id");
		
		
		$this->crud->set_table("tblproductos");
		$this->crud->set_subject("Listado de productos en el sistema");
		$this->crud->set_theme("flexigrid");
		// columnas que deseamos ver
		$this->crud->columns('foto1','ref','nombre','categoria', 'precio','poriva','porarancel');
		// los campos a cargar
		$this->crud->fields('ref','nombre','descripcion','categoria','precio','poriva','porarancel','foto1','foto2');
		// definir clave unica
		$this->crud->unique_fields(array('ref'));
		/***
		 * si desdeamos asociar el tipo de usuario para que aparezca como seleccionador de otra tabla
		 * usamos set_relation
		 */
		$this->crud->set_relation('categoria','tblcategoriasdeproductos','nombre');
		/**
		 * agregar la opcion de subir una imagen o documento del sistema
		 */
		$this->crud->set_field_upload('foto1','assets/imagenes/productos/');
		$this->crud->set_field_upload('foto2','assets/imagenes/productos/');
		// pasar de tipo texto a tipo clave
		// $this->crud->change_field_type('correo','email');
		// pasar de tipo texto a tipo email
		// $this->crud->change_field_type('usuario','email');
		// definir los campos obligatorios
		$this->crud->required_fields('ref','nombre','descripcion','categoria','precio','poriva','porarancel','foto1');
		$this->crud->display_as('poriva','Porcentaje de IVA');
		$this->crud->display_as('porarancel','Porcentaje de arancel');

		$tabla=$this->crud->render();

		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;


		$this->load->view('productos',$vector);
	}

	// function encriptar($post_array) {
	// 	// la variable post array es la que guarda los campos o datos enviados al momento de presionar el
	// 	// boton guardar, se comporta de manera similar al $_POST
	// 	$post_array['clave']=sha1($post_array['clave']);
	// 	return $post_array;
	// }
}





