<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Clientes extends CI_Controller {

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
		
		
		$this->crud->set_table("tblclientes");
		$this->crud->set_subject("Listado de clientes en el sistema");
		$this->crud->set_theme("flexigrid");
		// columnas que deseamos ver
		$this->crud->columns('razonsocial','nombrecomercial','nit','telefono', 'correo','topdeclientes');
		// los campos a cargar
		$this->crud->fields('nit','razonsocial','clave','nombrecomercial','telefono','direccion','foto','correo','tipodecliente');
		// definir clave unica
		$this->crud->unique_fields(array('nit'));
		/***
		 * si desdeamos asociar el tipo de usuario para que aparezca como seleccionador de otra tabla
		 * usamos set_relation
		 */
		$this->crud->set_relation('tipodecliente','tbltiposdeclientes','nombre');
		/**
		 * agregar la opcion de subir una imagen o documento del sistema
		 */
		// $this->crud->set_field_upload('foto','assets/imagenes/usuarios');
		// pasar de tipo texto a tipo clave
		$this->crud->change_field_type('correo','email');
		// pasar de tipo texto a tipo email
		// $this->crud->change_field_type('usuario','email');
		// definir los campos obligatorios
		$this->crud->required_fields('nit','razonsocial','nombrecomercial','telefono','direccion','correo','tipodecliente');
		$this->crud->display_as('tipodecliente','Selecciona el tipo de cliente');
		$this->crud->display_as('razonsocial','Razon social');
		$this->crud->display_as('nombrecomercial','Nombre comercial');

		$tabla=$this->crud->render();

		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;


		$this->load->view('clientes',$vector);
	}

	// function encriptar($post_array) {
	// 	// la variable post array es la que guarda los campos o datos enviados al momento de presionar el
	// 	// boton guardar, se comporta de manera similar al $_POST
	// 	$post_array['clave']=sha1($post_array['clave']);
	// 	return $post_array;
	// }
}





