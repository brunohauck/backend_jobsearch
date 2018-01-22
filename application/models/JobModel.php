<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class JobModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
   }
	
	function get_jobs(){
		
		$this->db->select('
			j.id as id,
			j.company_id as company_id,
			j.title as title,
			j.location as location,
			j.job_type as type,
			j.skills as skills,
			j.description as description,
			j.created_at as created_at,
			c.company_name as company_name,
			c.location company_location,
			c.description company_description
		');
    $this->db->from('jobs as j');
    $this->db->join('company as c', 'c.id = j.company_id');
    $query = $this->db->get();
    if ($query->num_rows() > 0)
    {
    	$data = $query->result();
      return $data;
    }
    	else
      	return array();
		

	}
	
}	