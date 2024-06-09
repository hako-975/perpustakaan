<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
		$this->load->model('Anggota_model', 'anmo');
	}

	public function getTransaksi()
	{
		$this->db->join('anggota', 'transaksi.id_anggota=anggota.id_anggota');
		$this->db->join('buku', 'transaksi.id_buku=buku.id_buku');
		$this->db->order_by('id_transaksi', 'desc');
		return $this->db->get('transaksi')->result_array();	
	}

	public function getTransaksiById($id_transaksi)
	{
		$this->db->join('anggota', 'transaksi.id_anggota=anggota.id_anggota');
		$this->db->join('buku', 'transaksi.id_buku=buku.id_buku');
		return $this->db->get_where('transaksi', ['id_transaksi' => $id_transaksi])->row_array();	
	}

	public function addTransaksi()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan transaksi';
		$this->admo->userPrivilege('transaksi', $isi_log_2);

		$id_anggota = $this->input->post('id_anggota', true);
	    
	    if ($id_anggota == 0) {
	        $this->session->set_flashdata('message-failed', 'Anggota harus dipilih');
	        echo "
				<script>
					window.history.back();
				</script>
			";
	        exit;
	    }

		$id_buku = $this->input->post('id_buku', true);
	    if ($id_buku == 0) {
	        $this->session->set_flashdata('message-failed', 'Buku harus dipilih');
	        echo "
				<script>
					window.history.back();
				</script>
			";
	        exit;
	    }

		$current_date = date('Y-m-d H:i:s');
		$data = [
			'id_anggota' => ucwords(htmlspecialchars($this->input->post('id_anggota', true))),
			'id_buku' => ucwords(htmlspecialchars($this->input->post('id_buku', true))),
			'tanggal_kembali' => date('Y-m-d H:i:s', strtotime($current_date . ' + 3 days')),
			'denda' => 0,
			'status' => 'dipinjam'
		];

		$this->db->insert('transaksi', $data);

		$isi_log = 'Transaksi Peminjaman Buku ' . $this->anmo->getAnggotaById($data['id_anggota'])['nama_anggota'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('transaksi');
	}

	public function editTransaksi($id_transaksi)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah transaksi dengan id ' . $id_transaksi;
		$this->admo->userPrivilege('transaksi', $isi_log_2);

		$data_transaksi = $this->getTransaksiById($id_transaksi);
		$nama_anggota  = $data_transaksi['nama_anggota'];
		
		$tanggal_sekarang = strtotime(date('Y-m-d H:i:s'));
		$tanggal_kembali = strtotime($data_transaksi['tanggal_kembali']);
		$denda = 0;
		if ($tanggal_sekarang <= $tanggal_kembali) {
	    	$denda = 0;
		} else {
		    $selisih = floor(($tanggal_sekarang - $tanggal_kembali) / (60 * 60 * 24));
		    $denda = $selisih * 500;
		}

		$data = [
			'denda' => $denda,
			'status' => 'dikembalikan'
		];

		$this->db->update('transaksi', $data, ['id_transaksi' => $id_transaksi]);

		$isi_log = 'Transaksi Pengembalian Buku ' . $nama_anggota . ' berhasil';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('transaksi');
	}

	public function removeTransaksi($id_transaksi)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus transaksi dengan id ' . $id_transaksi;
		$this->admo->userPrivilege('transaksi', $isi_log_2);

		$data_transaksi = $this->getTransaksiById($id_transaksi);
		$nama_anggota = $data_transaksi['nama_anggota'];

		if (!$this->db->delete('transaksi', ['id_transaksi' => $id_transaksi])) {
		    $isi_log = 'Transaksi ' . $nama_anggota . ' gagal dihapus';
		    $this->lomo->addLog($isi_log, $dataUser['id_user']);
		    $this->session->set_flashdata('message-failed', $isi_log);
		} else {
		    $isi_log = 'Transaksi ' . $nama_anggota . ' berhasil dihapus';
		    $this->lomo->addLog($isi_log, $dataUser['id_user']);
		    $this->session->set_flashdata('message-success', $isi_log);
		}

		redirect('transaksi'); 
	}
}