<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
Este controlador permite destruir las variables de session y que se devuelva a login
*/
class Salir extends CI_Controller {

	public function index()  {
		$this->session->sess_destroy();
		redirect('login');	

	}


}





