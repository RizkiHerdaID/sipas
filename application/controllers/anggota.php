<?php
class Anggota extends CI_Controller{
    private $limit=20;
    
    function __construct(){
        parent::__construct();
        $this->load->library(array('template','pagination','form_validation','upload'));
        $this->load->model('m_anggota');
        
        if(!$this->session->userdata('username')){
            redirect('web');
        }
    }
    
    function index($offset=0,$order_column='nim',$order_type='asc'){
        if(empty($offset)) $offset=0;
        if(empty($order_column)) $order_column='nim';
        if(empty($order_type)) $order_type='asc';
        
        //load data
        $data['anggota']=$this->m_anggota->semua($this->limit,$offset,$order_column,$order_type)->result();
        $data['title']="Data Anggota";
        
        $config['base_url']=site_url('anggota/index/');
        $config['total_rows']=$this->m_anggota->jumlah();
        $config['per_page']=$this->limit;
        $config['uri_segment']=3;
        $this->pagination->initialize($config);
        $data['pagination']=$this->pagination->create_links();
        
        
        if($this->uri->segment(3)=="delete_success")
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data berhasil dihapus</div>";
        else if($this->uri->segment(3)=="add_success")
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data Berhasil disimpan</div>";
        else
            $data['message']='';
            $this->template->display('anggota/index',$data);
    }
    
    
    function edit($id){
        $data['title']="Edit Data Anggota";
        $data['listprodi']=$this->m_anggota->getProdi()->result();
        $this->_set_rules();
        if($this->form_validation->run()==true){
            $nim=$this->input->post('nim');
            //setting konfiguras upload image
            $config['upload_path'] = './assets/img/';
	    $config['allowed_types'] = 'gif|jpg|png';
	    $config['max_size']	= '1000';
	    $config['max_width']  = '2000';
	    $config['max_height']  = '1024';
                
            $this->upload->initialize($config);
            
            if($this->upload->do_upload('gambar')){
                $gambar=$this->upload->file_name;
                $info=array(
                    'nama'=>$this->input->post('nama'),
                    'prodi'=>$this->input->post('prodi'),
                    'ttl'=>$this->input->post('ttl'),
                    'jk'=>$this->input->post('jk'),
                    'hp'=>$this->input->post('hp'),
                    'image'=>$gambar
                );
            } else {
                $info=array(
                    'nama'=>$this->input->post('nama'),
                    'prodi'=>$this->input->post('prodi'),
                    'ttl'=>$this->input->post('ttl'),
                    'jk'=>$this->input->post('jk'),
                    'hp'=>$this->input->post('hp')
                );
            }
            
            //update data angggota
            $this->m_anggota->update($nim,$info);
            
            //tampilkan pesan
            $data['message']="<div class='alert alert-success'><b>Sukses!</b> Data Berhasil diupdate</div>";
            
            //tampilkan data anggota 
            $data['anggota']=$this->m_anggota->cek($id)->row_array();
            $this->template->display('anggota/edit',$data);
        }else{
            $data['anggota']=$this->m_anggota->cek($id)->row_array();
            $data['message']="";
            $this->template->display('anggota/edit',$data);
        }
    }
    
    
    function tambah(){
        $data['title']="Tambah Data Anggota";
        $this->_set_rules();
        $data['listprodi']=$this->m_anggota->getProdi()->result();
        if($this->form_validation->run()==true){
            $nim=$this->input->post('nim');
            $cek=$this->m_anggota->cek($nim);
            if($cek->num_rows()>0){
                $data['message']="<div class='alert alert-danger'><b>Gagal!</b> NIM sudah digunakan</div>";
                $this->template->display('anggota/tambah',$data);
            }else{
                //setting konfiguras upload image
                $config['upload_path'] = './assets/img/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1000';
		$config['max_width']  = '2000';
		$config['max_height']  = '1024';
                
                $this->upload->initialize($config);
                if(!$this->upload->do_upload('gambar')){
                    $gambar="";
                }else{
                    $gambar=$this->upload->file_name;
                }
                
                $info=array(
                    'nim'=>$this->input->post('nim'),
                    'nama'=>$this->input->post('nama'),
                    'jk'=>$this->input->post('jk'),
                    'ttl'=>$this->input->post('ttl'),
                    'prodi'=>$this->input->post('prodi'),
                    'hp'=>$this->input->post('hp'),
                    'image'=>$gambar
                );
                $this->m_anggota->simpan($info);
                redirect('anggota/index/add_success');
            }
        }else{
            $data['message']="";
            $this->template->display('anggota/tambah',$data);
        }
    }
    
    
    function hapus(){
        $kode=$this->input->post('kode');
        $detail=$this->m_anggota->cek($kode)->result();
	foreach($detail as $det):
	    unlink("assets/img/".$det->image);
	endforeach;
        $this->m_anggota->hapus($kode);
    }
    
    function cari(){
        $data['title']="Pencarian";
        $cari=$this->input->post('cari');
        $cek=$this->m_anggota->cari($cari);
        if($cek->num_rows()>0){
            $data['message']="";
            $data['anggota']=$cek->result();
            $this->template->display('anggota/cari',$data);
        }else{
            $data['message']="<div class='alert alert-danger'><b>Gagal!</b> Data tidak ditemukan</div>";
            $data['anggota']=$cek->result();
            $this->template->display('anggota/cari',$data);
        }
    }

    public function getprodi(){
        $this->load->helper('url');
        
        $id=$_GET['id'];
        $data=$this->m_anggota->get_prodiAjax($id);
        echo json_encode($data);
    }
    
    function _set_rules(){
        $this->form_validation->set_rules('nim','NIM','required|max_length[12]');
        $this->form_validation->set_rules('nama','Nama','required|max_length[50]');
        $this->form_validation->set_rules('jk','Jenis Kelamin','required|max_length[9]');
        $this->form_validation->set_rules('ttl','Tanggal Lahir','required');
        $this->form_validation->set_rules('prodi','Program Studi','required|max_length[40]');
        $this->form_validation->set_error_delimiters("<div class='alert alert-danger'>","</div>");
    }
}
