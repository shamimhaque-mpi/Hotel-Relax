<style>
    figure.effect-zoe p.icon-links a {
        float: none !important;
    }
    .team-member .team-attrs {
        padding: 20px 16px 20px 16px !important;
    }
</style> 
 
 <!--================Banner Area =================-->
    <section class="banner_area_plane" style="margin-top: 100px;">
        <div class="container">
            <div class="banner_content">
                <h3 class="text-center">Our Top Management</h3>
            </div>
        </div>
    </section>
    <div class="banner_link">
        <div class="container">
            <div class="b_crum_link_inner">
                <a class="active" href="<?= site_url('home'); ?>">Home</a>
                <a href="<?= site_url('home/team'); ?>">Top Management</a>
            </div>
        </div>
    </div>
    <!--================End Banner Area =================-->

    <div class="section ourTeam">
        <div class="container">
            <div class="row">
                <?php foreach($team as $value){ ?>

                <div class="col-md-3">
                    <div class="team-member">
                        <figure class="effect-zoe">
                            <div class="team-photo" style="height: 256px overflow: hidden;">
                                <img  src="<?= site_url($value->path); ?>" alt="Rachel James Johnes" class="img-responsive" style="min-height: 256px;">
                            </div>
                            <div class="team-attrs">
                                <div class="team-name font-accident-two-bold-italic" style="text-transform: uppercase;"><?= $value->name; ?></div>
                                <div class="team-position" style="text-transform: uppercase;"><?= $value->designation; ?></div>
                            </div>
                            <!--<div class="team-content small">
                                <?= $value->description; ?>
                            </div>-->
                            <figcaption>
                                <p class="icon-links">
                                    <a target="_blank" href="<?= 'http://'.$value->g_link; ?>"><i class="fa fa-google"></i></a>
                                    <a target="_blank" href="<?= 'http://'.$value->in_link; ?>"><i class="fa fa-instagram"></i></a>
                                    <a target="_blank" href="<?= 'http://'.$value->fb_link; ?>"><i class="fa fa-facebook"></i></a>
                                </p>
                                <p class="phone-number">
                                    <a href="#!">tel: <?= $value->phone; ?></a>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="dividewhite4"></div>
                </div>


                <?php } ?>
      



            </div>
        </div>
    </div>
    <!--End our-team-area-->
    <style>
        .p-0 {
            padding: 0;
        }
    </style>