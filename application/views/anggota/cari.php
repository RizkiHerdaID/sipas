<div class="nav navbar-nav navbar-right">
    <form class="navbar-form navbar-left" role="search" action="<?php echo site_url('anggota/cari');?>" method="post">
        <div class="form-group">
            <label>Cari NiM / Nama</label>
            <input type="text" class="form-control" placeholder="Search" name="cari">
        </div>
        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i> Cari</button>
    </form>
</div>
<a href="<?php echo site_url('anggota/tambah');?>" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Tambah</a>
<hr>
<?php echo $message;?>
<Table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-primary">No.</td>
            <td class="text text-primary">Image</td>
            <td class="text text-primary">NIM</td>
            <td class="text text-primary">Nama</td>
            <td class="text text-primary">JK</td>
            <td class="text text-primary">No. HP</td>
            <td class="text text-primary">Kelas</td>
            <td colspan="2"></td>
        </tr>
    </thead>
    <?php $no=0; foreach($anggota as $row ): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td><img src="<?php 
                                if ($row->image == "") {
                                    echo base_url('assets/img/user.png');
                                } else {
                                    echo base_url('assets/img/'.$row->image);
                                }
                                ?>" 
                                width="100px" height="100px">
        <td><?php echo $row->nim;?></td>
        <td><?php echo $row->nama;?></td>
        <td><?php echo $row->jk;?></td>
        <td><?php echo $row->hp;?></td>
        <td><?php echo $row->prodi;?></td>
        <td><a href="<?php echo site_url('anggota/edit/'.$row->nim);?>"><i class="glyphicon glyphicon-edit" style="color:green"></i></a></td>
        <td><a href="#" class="hapus" kode="<?php echo $row->nim;?>"><i class="glyphicon glyphicon-trash" style="color:red"></i></a></td>
    </tr>
    <?php endforeach;?>
</Table>


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
                url:"<?php echo site_url('anggota/hapus');?>",
                type:"POST",
                data:"kode="+kode,
                cache:false,
                success:function(html){
                    location.href="<?php echo site_url('anggota/index/delete_success');?>";
                }
            });
        });
    });
</script>
