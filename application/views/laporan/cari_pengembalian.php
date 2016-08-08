<table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-warning">No.</td>
            <td class="text text-warning">ID Transaksi</td>
            <td class="text text-warning">Tanggal Pengembalian</td>
            <td class="text text-warning">Denda</td>
        </tr>
    </thead>
    <?php $no=0; foreach($lap as $row): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><a href="<?php echo site_url('laporan/detail_pinjam/'.$row->id_transaksi);?>"><?php echo $row->id_transaksi;?></a></td>
        <td><?php echo $row->tgl_pengembalian;?></td>
        <td><?php echo $row->nominal;?></td>
    </tr>
    <?php endforeach;?>
</table>

<?php if ($no == 0) {
        echo "Tidak ada Data";
    } ?>