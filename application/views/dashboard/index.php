<style>
    .glyphicons {
        padding-left: 0;
        padding-bottom: 1px;
        margin-bottom: 20px;
        list-style: none;
        overflow: hidden;
      }
          
      .glyphicons li {
        float: left;
        width: 23%;
        height: 210px;
        padding: 75px;
        margin: 0 -1px -1px 0;
        font-size: 12px;
        line-height: 1.4;
        text-align: center;
        border: 1px solid #ddd;
      }
      
      .glyphicons .glyphicon {
              margin-top: 5px;
              margin-bottom: 10px;
              font-size: 24px;
              display: block;
              text-align: center;
      }
      a.tbl {
        color: #FFF;
      }
</style>
<div class="panel panel-default">
    <div class="panel-heading">
        Administrator
    </div>
    <div class="panel-body">
        <div class="container">
            <ul class="glyphicons">
                <a href="<?php echo site_url('anggota');?>" class="tbl">
                <li class="btn btn-danger">
                  <span class="glyphicon glyphicon-user"></span>
                  Anggota
                </li>
                </a>

                <a href="<?php echo site_url('buku');?>" class="tbl">
                <li class="btn btn-success">
                  <span class="glyphicon glyphicon-book"></span>
                  Buku
                </li>
                </a>

                <a href="<?php echo site_url('laporan/peminjaman');?>" class="tbl">
                <li class="btn btn-info">
                  <span class="glyphicon glyphicon-print"></span>
                  Laporan
                </li>
                </a>
            </ul>
            <?php $level = $this->session->userdata('level');
            if ($level == 2) { ?>
            <ul class="glyphicons">
                 <a href="<?php echo site_url('peminjaman');?>" class="tbl">
                <li class="btn btn-primary">
                  <span class="glyphicon glyphicon-save"></span>
                  Peminjaman
                </li>
                </a>

                <a href="<?php echo site_url('pengembalian');?>" class="tbl">
                <li class="btn btn-warning">
                  <span class="glyphicon glyphicon-saved"></span>
                  Pengembalian
                </li>
                </a>

                
            </ul>
            <?php } ?>
        </div>
    </div>
</div>