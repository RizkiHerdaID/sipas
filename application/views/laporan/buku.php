<legend class="text text-success"><?php echo $title;?></legend>
<table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-success">No.</td>
            <td class="text text-success">Kode Buku</td>
            <td class="text text-success">Judul</td>
            <td class="text text-success">Peminjam</td>
            <td class="text text-success">Tanggal Kembali</td>
        </tr>
    </thead>
    <?php $no=0; foreach($buku as $row): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><?php echo $row->kode_buku;?></td>
        <td><?php echo $row->judul;?></td>
        <td><?php echo $row->nama;?></td>
        <td><?php echo $row->tanggal_kembali;?></td>
    </tr>
    <?php endforeach; ?>
</table>

<?php if ($no == 0) {
        echo "Tidak ada Data";
    } ?>