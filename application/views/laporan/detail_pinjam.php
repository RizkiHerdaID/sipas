<legend>Detail Peminjaman</legend>
<div class="col-md-6">
    <div class="form-horizontal">
    <div class="form-group">
        <label class="col-lg-5">ID Transaksi</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['id_transaksi'];?>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-lg-5">Tanggal Pinjam</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['tanggal_pinjam'];?>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-lg-5">NIM</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['nim'];?>
        </div>
    </div>

    <div class="form-group">
        <label class="col-lg-5">Nama</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['nama'];?>
        </div>
    </div>

    <div class="form-group">
        <label class="col-lg-5">Program Studi</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['prodi'];?>
        </div>
    </div>

    <div class="form-group">
        <label class="col-lg-5">No. HP.</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['hp'];?>
        </div>
    </div>

    <div class="form-group">
        <label class="col-lg-5">Petugas</label>
        <div class="col-lg-5">
            : <?php echo $pinjam['petugas'];?>
        </div>
    </div>
    </div>
</div>

<table class="table table-striped">
    <thead>
        <tr>
            <td>Kode Buku</td>
            <td>Judul Buku</td>
            <td>Pengarang</td>
        </tr>
    </thead>
    <?php foreach($detail as $row):?>
    <tr>
        <td><?php echo $row->kode_buku;?></td>
        <td><?php echo $row->judul;?></td>
        <td><?php echo $row->pengarang;?></td>
    </tr>
    <?php endforeach;?>
</table>