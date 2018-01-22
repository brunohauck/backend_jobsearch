<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job extends CI_Controller {

	function __construct()
  {
  	parent::__construct();
    $this->load->model('JobModel', 'mjob', TRUE);
		$this->load->helper('url');
  }
	
	public function index()
	{
			$jobs = $this->mjob->get_jobs();
			$response['jobs'] = array();
			foreach($jobs as $j){
				$job = array();
				$company = array();
				$job["id"] = $j->id;
				$job["company_id"] = $j->company_id;
				$job["title"] = $j->title;
				$job["location"] = $j->location;
				$job["job_type"] = $j->type;
				$job["skills"] = $j->skills;
				$job["description"] = $j->description;
				$job["created_at"] = $j->created_at;
				$company["company_name"] = $j->company_name;
				$company["company_location"] = $j->company_location;
				$company["company_description"] = $j->company_description;
				$job["company"] = $company;
				array_push($response['jobs'], $job);
			}
			echo json_encode($response);	
		
	}
}	
?>	