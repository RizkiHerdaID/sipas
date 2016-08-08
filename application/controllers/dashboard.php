<?php
class Dashboard extends CI_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('m_petugas');
        $this->load->library(array('form_validation','template'));
        
        if(!$this->session->userdata('username')){
            redirect('web');
        }
    }
    
    function index(){
        $data['title']="Home";
        
        $this->template->display('dashboard/index',$data);
    }
    
    function petugas(){
        $data['title']="Data Petugas";
        $data['petugas']=$this->m_petugas->semua()->result();
        if($this->uri->segment(3)=="delete_success")
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data berhasil dihapus</div>";
        else if($this->uri->segment(3)=="add_success")
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data Berhasil disimpan</div>";
        else
            $data['message']='';
        $this->template->display('dashboard/petugas',$data);
    }
    
    function tambahpetugas(){
        $data['title']="Tambah Petugas";
        $level = $this->session->userdata('level');
        $this->_set_rules();
        if($this->form_validation->run()==true){
            $user=$this->input->post('user');
            $cek=$this->m_petugas->cekKode($user);
            if($cek->num_rows()>0){
                $data['message']="<div class='alert alert-danger'><b>Gagal!</b> Username sudah digunakan</div>";
                $this->template->display('dashboard/tambahpetugas',$data);
            }else{
                $info=array(
                    'nama_lengkap'=>$this->input->post('nama_lengkap'),
                    'no'=>$this->input->post('no'),
                    'user'=>$this->input->post('user'),
                    'level'=>2,
                    'password'=>md5($this->input->post('password'))
                );
                $this->m_petugas->simpan($info);
                redirect('dashboard/petugas/add_success');
            }
        }else{
            $data['message']="";
            $this->template->display('dashboard/tambahpetugas',$data);
        }
    }
    
    function edit($id){
        $data['title']="Update data Petugas";
        $this->_set_edit_rules();
        if($this->form_validation->run()==true){
            $id=$this->input->post('id');
            $pass=$this->input->post('password');
            if ($pass=="") {
                $info=array(
                    'nama_lengkap'=>$this->input->post('nama_lengkap'),
                    'no'=>$this->input->post('no'),
                    'user'=>$this->input->post('user'));
            } else {
                $info=array(
                    'nama_lengkap'=>$this->input->post('nama_lengkap'),
                    'no'=>$this->input->post('no'),
                    'user'=>$this->input->post('user'),
                    'password'=>md5($this->input->post('password')));
            }
            
            $this->m_petugas->update($id,$info);
            $data['petugas']=$this->m_petugas->cekId($id)->row_array();
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data Berhasil diupdate</div>";
            $this->template->display('dashboard/editpetugas',$data);
        }else{
            $data['message']="";
            $data['petugas']=$this->m_petugas->cekId($id)->row_array();
            $this->template->display('dashboard/editpetugas',$data);
        }
    }
    
    function hapus(){
        $kode=$this->input->post('kode');
        $this->m_petugas->hapus($kode);
    }
    
    function _set_rules(){
        $this->form_validation->set_rules('nama_lengkap','Nama Lengkap','required|trim');
        $this->form_validation->set_rules('no','No. HP.','required|trim');
        $this->form_validation->set_rules('user','Username','required|trim');
        $this->form_validation->set_rules('password','Password','required|trim');
        $this->form_validation->set_error_delimiters("<div class='alert alert-danger'>","</div>");
    }
    
    function _set_edit_rules(){
        $this->form_validation->set_rules('nama_lengkap','Nama Lengkap','required|trim');
        $this->form_validation->set_rules('no','No. HP.','required|trim');
        $this->form_validation->set_rules('user','Username','required|trim');
        $this->form_validation->set_error_delimiters("<div class='alert alert-danger'>","</div>");
    }

    function logout(){
        $this->session->unset_userdata('username');
        redirect('web');
    }
}