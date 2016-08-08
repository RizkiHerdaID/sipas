<legend class = "text text-danger"><?php echo $title;?></legend>
<table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-danger">No.</td>
            <td class="text text-danger">NIM</td>
            <td class="text text-danger">Nama</td>
            <td class="text text-danger">Tanggal Lahir</td>
            <td class="text text-danger">Program Studi</td>
        </tr>
    </thead>
    <?php $no=0; foreach($anggota as $row): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><?php echo $row->nim;?></td>
        <td><?php echo $row->nama;?></td>
        <td><?php echo $row->ttl;?></td>
        <td><?php echo $row->prodi;?></td>
    </tr>
    <?php endforeach;?>
</table>

<?php if ($no == 0) {
        echo "Tidak ada Data";
    } ?>