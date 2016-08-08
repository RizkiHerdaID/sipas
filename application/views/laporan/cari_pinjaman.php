<table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-primary">No.</td>
            <td class="text text-success">ID Transaksi</td>
            <td class="text text-success">Tanggal Pinjam</td>
            <td class="text text-success">Tanggal Kembali</td>
            <td class="text text-success">NIM</td>
        </tr>
    </thead>
    <?php $no=0; foreach($lap as $row): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><a href="<?php echo site_url('laporan/detail_pinjam/'.$row->id_transaksi);?>"><?php echo $row->id_transaksi;?></a></td>
        <td><?php echo $row->tanggal_pinjam;?></td>
        <td><?php echo $row->tanggal_kembali;?></td>
        <td><?php echo $row->nim;?></td>
    </tr>
    <?php endforeach;?>
</table>

<?php if ($no == 0) {
        echo "Tidak ada Data";
    } ?>