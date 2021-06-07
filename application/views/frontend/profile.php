
    <!--================Banner Area =================-->
    <section class="banner_area_plane">
        <div class="container">
            <div class="banner_content">
                <h3>Our Companies</h3>
            </div>
        </div>
    </section>
    <div class="banner_link">
        <div class="container">
            <div class="b_crum_link_inner">
                <a class="active" href="<?= site_url('home'); ?>">Home</a>
                <a href="<?= site_url('home/profile'); ?>">Our Companies</a>
            </div>
        </div>
    </div>
    <!--================End Banner Area =================-->

    <!--================Carrers Area =================-->
    <section class="carrers_area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="carrers_right_content">
                        <div class="tab-content">
                            <div class="partner_details">
                                <div class="section_title">
                                    <h2>Our Companies</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                                        fugiat nulla pariatur</p>
                                </div>
                                <div class="partner_details_inner">
                                    
                                    
                                    <?php foreach($profile as $key => $value){ ?>
                                    
                                    <div class="media">
                                        <div class="media-left">
                                            <img width="140" height="150" src="<?php echo site_url($value->path); ?>" alt="">
                                        </div>
                                        <div class="media-body">
                                            <h4><?= $value->name ?></h4>
                                            <p><?= substr($value->description,0,200) ?></p>
                                        </div>
                                    </div>
                                    
                                    <?php } ?>
                                    
                                    
                                   
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Carrers Area =================-->


    <!-- start clients -->
    <section id="clients">
        <div class="container">
            <div class="sec_middle_title">
                <h2>Our partners</h2>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <style>
                        .owl_carousel_m_next {
                            position: absolute;
                            top: 43px;
                            right: 25px;
                            font-size: 24px;
                            z-index: 7;
                            cursor: pointer;
                            padding: 20px;
                        }
                        .owl_carousel_m_prev {
                            position: absolute;
                            top: 43px;
                            left: 25px;
                            font-size: 24px;
                            z-index: 7;
                            cursor: pointer;
                            padding: 20px;
                        }
                        .owl_carousel_m_next i, .owl_carousel_m_prev i {
                            font-weight: 700;
                        }
                    </style>
                    <div>
                        <a href="JavaScript:Void(0);" class="owl_carousel_m_next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                        <a href="JavaScript:Void(0);" class="owl_carousel_m_prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                    </div>
                    <div class="owl_carousel_m">
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/1.png'); ?>" alt="client">
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/2.png'); ?>" alt="client">
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/3.png'); ?>" alt="client">
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/4.png'); ?>" alt="client">
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/5.png'); ?>" alt="client">
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-img-holder">
                                <img src="<?php echo site_url('public/img/clients/6.png'); ?>" alt="client">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- end clients -->