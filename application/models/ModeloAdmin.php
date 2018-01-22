<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ModeloAdmin extends CI_Model
{
  function __construct()
  {
       parent::__construct();
  }
  function validate_login($email)
	{
		  $this->db->where('email', $email);	  
      $query = $this->db->get('empresa');
      //var_dump($query);
      //echo $this->db->last_query();
			if($query->num_rows() > 0){
				 $data = $query->result();
         return $data;	
			}else{
				return false;
			}
	}
	function get_restaurante_by_id($id){
		$this->db->where('empresa_id', $id);
    $query = $this->db->get('restaurante');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
    	return array();
	}
  
}  