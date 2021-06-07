    <!--================Banner Area =================-->
    <!--<section class="banner_area_plane">
        <div class="container">
            <div class="banner_content">
                <h3>Single services with_Tab</h3>
            </div>
        </div>
    </section>-->
    <div class="banner_link">
        <div class="container">
            <div class="b_crum_link_inner">
                <a class="active" href="index.html">Home</a>
                <a href="single-service.html">Service Details</a>
            </div>
        </div>
    </div>
    <!--================End Banner Area =================-->

    <!--================Carrers Area =================-->
    <section class="carrers_area" style="padding: 40px 0px;">
        <div class="container">
            <div class="row">
                
                <div class="col-md-12">
                    <div class="service_content_right_col">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active fade in" id="carrers1">
                                <div class="service_content_bx">
                                    <div class="row ">
                                        <div class="col-sm-12">
                                            <img width="100%" class="m_m_" src="<?php echo site_url($service[0]->path) ?>" alt="">
                                            <h2><?= $service[0]->title; ?></h2>
                                            <?= $service[0]->description; ?>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
    <!--================End Carrers Area =================-->