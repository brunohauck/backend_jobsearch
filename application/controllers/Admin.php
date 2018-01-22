<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct()
  {
        parent::__construct();
        $this->load->model('ModeloAdmin', 'banco', TRUE);
				$this->load->helper('url');
  }
	public function login_old(){
		echo "tudo bem";
	}
  public function login(){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$email = "";
			$password = "";
    	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
					  if($key == "email"){
		        	$email = $val;
		        }else
		        if($key == "password"){
		        	$password = $val;
		        }else{
							$msg = "valor enviado invalido";
						}		        
		    }
				$retornoLogin = $this->banco->validate_login($email);
				if($retornoLogin){
					
					foreach($retornoLogin as $ret){
						$key = md5(uniqid(rand(), TRUE));
						
						if(password_verify($password,$ret->password)){
							$data = array(
								'tk' => $key
							);
							$user_id = $ret->id;
							$this->db->where('id', $user_id);
							$this->db->update('empresa', $data);	
							$restaurante = $this->banco->get_restaurante_by_id($ret->id);
							foreach($restaurante as $res){
								$res_id = $res->id;
							}
							$msg = $user_id."|sucesso|1|".$key."|".$res_id;
						}else{
							$msg = "Email ou senha inválidos";
						}	
					}	
				}else{
					$msg = "Email ou senha inválidos";
				}			
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
	}
	
	public function cadastrar_cardapio($token){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$nome = "";
    	$ingredientes = "";
			$preco = "";
			$empresa_id = "";
			$restaurante_id = "";
		  $flag_update = "";
			$id = "";
			var_dump($request);
     	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
					if($key == "id"){
		        	$id = $val;
		        }else
		        if($key == "nome"){
		        	$nome = $val;
		        }else
					  if($key == "ingredientes"){
		        	$ingredientes = $val;
		        }else
		        if($key == "preco"){
		        	$preco = $val;
		        }else
		        if($key == "empresa_id"){
		        	$empresa_id = $val;
		        }else
		        if($key == "restaurante_id"){
		        	$restaurante_id = $val;
						}else
		        if($key == "flag_update"){
		        	$flag_update = $val;
		        }	
		        else{
							$msg = "valor enviado invalido";
						}	//flag_update	        
		    }
				// Verificando a permissao com token
				$this->db->where('tk', $token);  
				$this->db->where('id', $empresa_id);  
				$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
				if($query->num_rows() > 0){
						
					$dados = array(
							'restaurante_id' => $restaurante_id,
							'nome' => $nome,
							'ingredientes' => $ingredientes,
							'preco' => $preco
					);
					//$msg .= " ".$flag_update;
					if($flag_update){
						$this->db->where('id', $id);
						$this->db->update('cardapio', $dados);
						$msg = $id."|sucesso";
					}else{
						if($this->db->insert('cardapio', $dados)){
							$insert_id = $this->db->insert_id();
							$msg = $insert_id."|sucesso";
						}else{
							$msg = "Ocorreu algum erro";
						}	
						
					}
				
				}else{
						$msg .= " Token inválido";
				}
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
		//echo json_encode($response);
	}
	
}  