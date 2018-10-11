<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Usuarios extends CI_Controller {

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
		
		
		$this->crud->set_table("tblusuarios");
		$this->crud->set_subject("Listado de usuarios en el sistema");
		$this->crud->set_theme("flexigrid");
		// columnas que deseamos ver
		$this->crud->columns('foto','nombre','usuario','telefono');
		// los campos a cargar
		$this->crud->fields('nombre','usuario','clave','telefono','whatsapp','skype','foto','tipodeusuario');
		// definir clave unica
		$this->crud->unique_fields(array('usuario','whatsapp','skype'));
		/***
		 * si desdeamos asociar el tipo de usuario para que aparezca como seleccionador de otra tabla
		 * usamos set_relation
		 */
		$this->crud->set_relation('tipodeusuario','tbltiposusuarios','nombre');
		/**
		 * agregar la opcion de subir una imagen o documento del sistema
		 */
		$this->crud->set_field_upload('foto','assets/imagenes/usuarios');
		// pasar de tipo texto a tipo clave
		$this->crud->change_field_type('clave','password');
		// pasar de tipo texto a tipo email
		$this->crud->change_field_type('usuario','email');
		// definir los campos obligatorios
		$this->crud->required_fields('nombre','usuario','clave','foto','telefono','whatsapp','skype','tipodeusuario');
		$this->crud->display_as('tipodeusuario','Selecciona el tipo de usuario');

		$tabla=$this->crud->render();

		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;


		$this->load->view('usuarios',$vector);
	}
}





