<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tipodeclientes extends CI_Controller {

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
		
		$this->crud->set_table("tbltiposdeclientes");
		$this->crud->set_subject("Listado de tipos de cliente");
		$this->crud->set_theme("flexigrid");
		$tabla=$this->crud->render();
		
		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;
		$this->load->view('Tiposdeclientes.php',$vector);
	}
}





