<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct() {
		// invocar la herencia del constructor
		parent:: __construct();	
		// cargar el modelo del login
		$this->load->Model('Login_model');
	}


	public function index()  {

		/* 
		parametros globales
		*/
		$vector['titulo']="Appweb";
		$vector['remate']=date("Y");

		$this->load->view('login',$vector);

	}

	// funcion que valida el usuario y clave y una vez este loqueado lo mande a principal
	public function acceso() {
		// invocar el metooo del modelo
		// que no permite saber si hay acceso o no 
		$data=$this->Login_model->validar_acceso();
		// proceso de validacion
		// 1. si se encuentran registros, que cargue las variables y lo  envie a principal
		// 2. en caso contrario lo mande a login
/*		print_r($data);
		exit());

*/		if (count($data)>0) {
			// vamos a crear el proceso de registro de variables de session
			// para crear las variables de session debemos tener cargada la libreria o el helper de sessiones
			// se crea un array con las variables que deseamos como crear session
			// cuando traemos una sola fila de registros , no es necesario usar foreach.
			// solo invocamos antes del campo la posicion

			/*
			foreach ($data as $fila) {
					$data_session=array(
						'id'=>$fila["pkid"],
						'nombrecompleto'=>$fila["nombre"],
						'correo'=>$fila["usuario"],
						'telefono'=>$fila["telefono"]
					);
			
			}
			*/


			$data_session=array(
				'id'=>$data[0]["pkid"],
				'nombrecompleto'=>$data[0]["nombre"],
				'correo'=>$data[0]["usuario"],
				'telefono'=>$data[0]["telefono"]
			);

			// invocar la libreria session  metodo set_userdata
			$this->session->set_userdata($data_session); 
			redirect('principal');
		} else {
			redirect('login');
		}

	}

}





