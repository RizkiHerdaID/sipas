<?php $level = $this->session->userdata('level');
 $part = $this->uri->segment(1) ?>
<div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                                        </span> Master <?php if ($level == 1) { echo "Admin"; } else { echo "Petugas"; }?></a>
                                    </h4>
                                </div>
                                <?php if ($part == "anggota" || $part == "petugas" || $part == "buku" || $part == "dashboard"  ) { ?>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                <?php } else { ?>
                                    <div id="collapseOne" class="panel-collapse collapse">
                                <?php } ?>
                                    <div class="panel-body">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-pencil text-primary"></span> <a href="<?php echo site_url('anggota');?>">Anggota</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-book text-success"></span> <a href="<?php echo site_url('buku');?>">Buku</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="glyphicon glyphicon-user text-danger"></span> <a href="<?php echo site_url('dashboard/petugas');?>">Petugas</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
               <?php if ($level != 1) { ?>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                                </span> Transaksi <?php if ($level == 1) { echo "Admin"; } else { echo "Petugas"; }?></a>
                            </h4>
                        </div>
                        <?php if ($part == "peminjaman" || $part == "pengembalian") { ?>
                                    <div id="collapseTwo" class="panel-collapse collapse in">
                                <?php } else { ?>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                <?php } ?>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <td>
                                            <span class="glyphicon glyphicon-saved text-info"></span><a href="<?php echo site_url('peminjaman');?>"> Peminjaman</a></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <span class="glyphicon glyphicon-save text-warning"></span> <a href="<?php echo site_url('pengembalian');?>"> Pengembalian</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                            </span> Laporan <?php if ($level == 1) { echo "Admin"; } else { echo "Petugas"; }?></a>
                        </h4>
                    </div>
                    <?php if ($part == "laporan" ) { ?>
                                    <div id="collapseFour" class="panel-collapse collapse in">
                                <?php } else { ?>
                                    <div id="collapseFour" class="panel-collapse collapse">
                                <?php } ?>
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-user  text-danger"></span><a href="<?php echo site_url('laporan/anggota');?>"> Data Anggota</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book  text-success"></span><a href="<?php echo site_url('laporan/buku');?>"> Data Buku Keluar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-tasks  text-info"></span><a href="<?php echo site_url('laporan/peminjaman');?>"> Data Peminjaman</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-list-alt text-warning"></span><a href="<?php echo site_url('laporan/pengembalian');?>"> Data Pengembalian</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="<?php echo site_url('dashboard/logout');?>"><span class="glyphicon glyphicon-off">
                            </span> Logout</a>
                        </h4>
                    </div>
                </div>
</div>