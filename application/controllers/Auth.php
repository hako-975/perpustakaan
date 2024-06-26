<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Auth_model', 'aumo');
	}

	public function checkLogin()
	{
		if ($this->session->userdata('id_user')) 
		{
			redirect('admin');		
		}
	}

	public function index()
	{
		$this->checkLogin();

		$data['title'] = 'User Login';
		$this->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->form_validation->set_rules('password', 'Password', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header', $data);
		    $this->load->view('auth/index', $data);
		    $this->load->view('templates/footer', $data);  
		} else {
		    $this->aumo->loginAdmin();
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		session_destroy();
		redirect('auth');
	}
}