<div class="nav navbar-nav navbar-right">
    <form class="navbar-form navbar-left" role="search" action="<?php echo site_url('buku/cari');?>" method="post">
        <div class="form-group">
            <label>Cari Kode / Judul Buku</label>
            <input type="text" class="form-control" placeholder="Search" name="cari">
        </div>
        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i> Cari</button>
    </form>
</div>
<a href="<?php echo site_url('buku/tambah');?>" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i> Tambah</a>
<hr>
<?php echo $message;?>
<Table class="table table-striped">
    <thead>
        <tr>
            <td class="text text-success">No.</td>
            <td class="text text-success">Image</td>
            <td class="text text-success">Kode Buku</td>
            <td class="text text-success">Judul</td>
            <td class="text text-success">Pengarang</td>
            <td class="text text-success">Klasifikasi</td>
            <td colspan="2"></td>
        </tr>
    </thead>
    <?php $no=0; foreach($buku as $row ): $no++;?>
    <tr>
        <td><?php echo $no;?></td>
        <td>
            <img src="<?php 
                                if ($row->image == "") {
                                    echo base_url('assets/img/book.png');
                                } else {
                                    echo base_url('assets/img/'.$row->image);
                                }
                                ?>" 
                                width="100px" height="100px">

        <td><?php echo $row->kode_buku;?></td>
        <td><?php echo $row->judul;?></td>
        <td><?php echo $row->pengarang;?></td>
        <td><?php echo $row->klasifikasi;?></td>
        <td><a href="<?php echo site_url('buku/edit/'.$row->kode_buku);?>"><i class="glyphicon glyphicon-edit" style="color:green"></i></a></td>
        <td><a href="#" class="hapus" kode="<?php echo $row->kode_buku;?>"><i class="glyphicon glyphicon-trash" style="color:red"></i></a></td>
    </tr>
    <?php endforeach;?>
</Table>
<?php echo $pagination;?>

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
                url:"<?php echo site_url('buku/hapus');?>",
                type:"POST",
                data:"kode="+kode,
                cache:false,
                success:function(html){
                    location.href="<?php echo site_url('buku/index/delete_success');?>";
                }
            });
        });
    });
    
</script>