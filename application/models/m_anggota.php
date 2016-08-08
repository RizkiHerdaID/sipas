<?php
class M_anggota extends CI_Model{
    private $table="anggota";
    private $primary="nim";
    
    function semua($limit=10,$offset=0,$order_column='',$order_type='asc'){
        if(empty($order_column) || empty($order_type))
            $this->db->order_by($this->primary,'asc');
        else
            $this->db->order_by($order_column,$order_type);
        return $this->db->get($this->table,$limit,$offset);
    }
    
    function jumlah(){
        return $this->db->count_all($this->table);
    }
    
    function rating(){
        $query = "select nama, count(status) as total 
        from transaksi t join anggota a
        on t.nim = a.nim
        where t.tanggal_pinjam > 2015/11/01 group by t.nim order by total desc limit 5";
        $result = $this->db->query($query);
        return $result;
        
    }

    function cek($kode){
        $this->db->where($this->primary,$kode);
        $query=$this->db->get($this->table);
        
        return $query;
    }
    function getProdi() {
        $query = "select distinct(prodi) from tb_prodi";
        $result = $this->db->query($query);
        return $result;
    }
    
    function simpan($jenis){
        $this->db->insert($this->table,$jenis);
        return $this->db->insert_id();
    }
    
    function update($kode,$jenis){
        $this->db->where($this->primary,$kode);
        $this->db->update($this->table,$jenis);
    }
    
    function hapus($kode){
        $this->db->where($this->primary,$kode);
        $this->db->delete($this->table);
    }
    
    function cari($cari){
        $this->db->like($this->primary,$cari);
        $this->db->or_like("nama",$cari);
        return $this->db->get($this->table);
    }
    function get_prodiAjax($id){
        $arrayer=array();
        $result= $this->db->query("SELECT * FROM tb_prodi WHERE id_fak = '$id'");
        foreach($result->result() as $row){
            $arrayer[$row->id_prodi]=$row->prodi;
        }
        return $arrayer;
    }
}