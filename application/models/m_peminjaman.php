<?php
class M_Peminjaman extends CI_Model{
    private $table="transaksi";
    
    function nootomatis(){
        $today=date('Ymd');
        $query=mysql_query("select max(id_transaksi) as last from transaksi");
        $data=mysql_fetch_array($query);
        $lastNoFaktur=$data['last'];
        
        $lastNoUrut=substr($lastNoFaktur,8,3);
        
        $nextNoUrut=$lastNoUrut+1;
        
        $nextNoTransaksi=$today.sprintf('%03s',$nextNoUrut);
        
        return $nextNoTransaksi;
    }
    
    function getAnggota(){
        return $this->db->query("SELECT * FROM anggota order by nim desc");
    }
    
    function cariAnggota($nim){
        $this->db->where("nim",$nim);
        return $this->db->get("anggota");
    }
    
    function count($nim){
        return $this->db->query("SELECT count(status) as total FROM transaksi where status = 'N' and nim = ".$nim);
    }

    function cariBuku($kode){
        $this->db->where("kode_buku",$kode);
        return $this->db->get("buku");
    }
    
    function simpanTmp($info){
        $this->db->insert("tmp",$info);
    }
    
    function tampilTmp(){
        return $this->db->get("tmp");
    }
    
    function cekTmp($kode){
        $this->db->where("kode_buku",$kode);
        return $this->db->get("tmp");
    }
    
    function jumlahTmp(){
        return $this->db->count_all("tmp");
    }
    
    function hapusTmp($kode){
        $this->db->where("kode_buku",$kode);
        $this->db->delete("tmp");
    }
    
    function simpan($info){
        $this->db->insert("transaksi",$info);
    }
    
    function pencarianbuku($cari){
        $query=$this->db->query("select * from buku where kode_buku
                                not in(select kode_buku from transaksi where status = 'N') and
                                kode_buku not in (select kode_buku from tmp) 
                                and judul like'%".$cari."%'");
        return $query;
    }
    
}