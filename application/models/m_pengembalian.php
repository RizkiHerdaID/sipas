<?php
class M_Pengembalian extends CI_Model{
    
    function cariTransaksi($no){
        $query=$this->db->query("select a.*,b.nama from transaksi a,
                                anggota b
                                where a.id_transaksi='".$no."' and a.id_transaksi
                                not in(select id_transaksi from pengembalian)
                                and a.nim=b.nim");
        return $query;
    }
    
    function tampilBuku($no){
        $query=$this->db->query("select a.*,b.judul,b.pengarang
                                from transaksi a,buku b
                                where a.id_transaksi='".$no."' and
                                a.id_transaksi not in(select id_transaksi from pengembalian)
                                and a.kode_buku=b.kode_buku");
        return $query;
    }
    
	
    function simpan($info){
        $this->db->insert("pengembalian",$info);
    }
    
	function bukuKembali($no){
        $this->db->query("UPDATE  buku SET  `status_pinjam` =  '0' 
		WHERE  `buku`.`kode_buku` in  (select kode_buku from transaksi where id_transaksi = ".$no." )");
    }
	
    function update($no,$update){
        $this->db->where("id_transaksi",$no);
        $this->db->update("transaksi",$update);
    }
    
    function cari_by_trans($no){
        $query=$this->db->query("select * from transaksi where id_transaksi
                                not in(select id_transaksi from pengembalian)
                                and id_transaksi like'%".$no."%' group by id_transaksi");
        return $query;
    }
}