<legend class="text text-danger">Tambah Petugas</legend>
 <?php
        $level = $this->session->userdata('level');
        if ($level == 1) {
            ?><a href="<?php echo site_url('dashboard/tambahpetugas');?>" class="btn btn-danger"><i class="glyphicon glyphicon-plus"></i> Tambah</a>
        <?php } ?>
<?php echo $message;?>
<table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-danger">No.</td>
            <td class="text text-danger">Nama Lengkap</td>
            <td class="text text-danger">No. HP.</td>
            <td class="text text-danger">Username</td>
            <td colspan="2"></td>
        </tr>
    </thead>
    <?php $no=0; foreach($petugas as $row): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><?php echo $row->nama_lengkap;?></td>
        <td><?php echo $row->no;?></td>
        <td><?php echo $row->user;?></td>
        <?php $level = $this->session->userdata('level');
            if ($level == 1) { ?>
            <td><a href="<?php echo site_url('dashboard/edit/'.$row->id_petugas);?>"><i class="glyphicon glyphicon-edit"></i></a></td>
            <td><a href="#" class="hapus" kode="<?php echo $row->id_petugas;?>"><i class="glyphicon glyphicon-trash"></i></a></td>
        <?php }
        ?>
    </tr>
    <?php endforeach;?>
</table>

<script>
    $(function(){
        $(".hapus").click(function(){
            var kode=$(this).attr("kode");
            
            $("#idhapus").val(kode);
            $("#myModal").modal("show");
        });
        
        $("#konfirmasi").click(function(){
            var kode=$("#idhapus").val();
            
            $.ajax({
                url:"<?php echo site_url('dashboard/hapus');?>",
                type:"POST",
                data:"kode="+kode,
                cache:false,
                success:function(html){
                    location.href="<?php echo site_url('dashboard/petugas/delete_success');?>";
                }
            });
        });
    });
</script>