<?php
class M_Laporan extends CI_Model{
    #code
    
    function semuaAnggota(){
        return $this->db->get("anggota");
    }
    
    function semuaBuku(){
        return $this->db->get("buku");
    }

    function bukuKeluar(){
        return $this->db->query("SELECT * FROM transaksi t join buku b on t.kode_buku = b.kode_buku 
           join anggota a on t.nim = a.nim where t.status = 'N' order by tanggal_pinjam");
    }
    
    function detailpeminjaman($tanggal1,$tanggal2){
        return $this->db->query("select * from transaksi where tanggal_pinjam between '$tanggal1' and '$tanggal2' group by id_transaksi");
    }
    
    function detail_pinjam($id){
        $this->db->select("*");
        $this->db->from("transaksi");
        $this->db->where("id_transaksi",$id);
        $this->db->join("buku","buku.kode_buku=transaksi.kode_buku");
        $this->db->join("anggota","anggota.nim=transaksi.nim");
        return $this->db->get();
    }
    
    function detailpengembalian($tanggal1,$tanggal2){
        return $this->db->query("select * from pengembalian where tgl_pengembalian between '$tanggal1' and '$tanggal2' group by id_transaksi");
    }
}
