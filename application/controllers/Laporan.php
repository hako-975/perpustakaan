<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Laporan_model', 'lamo');
		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Laporan';

		$dari_tanggal 		= $this->input->get('dari_tanggal');
		$sampai_tanggal		= $this->input->get('sampai_tanggal');
		$status				= $this->input->get('status');
		$data['transaksi']	= $this->lamo->getLaporanFilter($dari_tanggal, $sampai_tanggal, $status);
		$this->load->view('templates/header-admin', $data);
		$this->load->view('laporan/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function print()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();

		$dari_tanggal 		= $this->input->get('dari_tanggal');
		$sampai_tanggal		= $this->input->get('sampai_tanggal');
		$status				= $this->input->get('status');

		$data['title']  	= 'Laporan dari ' . date('d-m-Y', strtotime($dari_tanggal)) . ' - sampai ' . date('d-m-Y', strtotime($sampai_tanggal)) . ' - status: ' . ucwords($status);
		$data['transaksi']	= $this->lamo->getLaporanFilter($dari_tanggal, $sampai_tanggal, $status);
		$this->load->view('laporan/print', $data);
	}
}
