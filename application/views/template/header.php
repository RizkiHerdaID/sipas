<!--<img src="<?php echo base_url('assets/img/3.jpg');?>" height="140px" width="100%">-->
            <!-- Static navbar -->

            <div class="nav navbar navbar-default navbar-fixed-top">
                <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php echo site_url('dashboard');?>">Perpustakaan</a>
                </div>
                <div class="navbar-nav navbar-right " >
                    <br><?php echo $this->session->userdata('petugas') ?>
                </div>
                </div>
            </div>

            <br>
            <br>
            <br>
            <!-- <img src="<?php echo base_url('assets/img/3.jpg');?>" height="150px" width="100%"> -->
            
            <br>