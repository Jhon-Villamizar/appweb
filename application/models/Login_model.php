<?php
/*
Modelo de acceso de login
Los modelos en CI se heredan de uno principal llamado CI_Model
ese modelo principal contiene todas las operaciones posibles con la base de datos
toda la informacion que le pasemos en metodo POST o similares
se debe blindar con una libreria o helper del CI llamada security
Si en el autoload.php no esta cargada la debemos incluir en el metodo constructor de esta clase
*/
class Login_model extends CI_Model {

	// crear funcion de validacion del acceso
	function validar_acceso() {
		// aplicarles los controles a los campos que se usan en la vista login.php que con usuario y clave
		$usuario=$this->input->post("usuario");
		$clave=$this->input->post("clave");
		// aplicarle a cada campo la libreria seguridad
		$usuario=$this->security->xss_clean($usuario);
		$clave=$this->security->xss_clean($clave);
		// realizar la consultaz
		//$sql="select * from tblusuario where correo='$usuario'";
		//$sql.=" and clave=sha1('$clave')";
		// realizar la consulta pero usando laws funciones
		// del CI_Model
		
		$data=array("usuario"=>$usuario,"clave"=>sha1($clave));
		
		$query=$this->db->get_where("tblusuarios",$data);
		// la ejecucion del query internamente puede devolver los datos
		// en un vector o como un objeto. 
		return $query->result_array();

	}
	

}
?>