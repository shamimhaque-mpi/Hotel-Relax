<style>
    body {
        background: #efefef;
    }
    .panel-collapse.collapse:nth-of-type(1){
        display: block !important;
    }
</style>

<!--================Banner Area =================-->
    <section class="banner_area_plane" style="margin-top: 100px">
        <div class="container">
            <div class="banner_content">
                <h3 class="text-center">Faq</h3>
            </div>
        </div>
    </section>
    <div class="banner_link">
        <div class="container">
            <div class="b_crum_link_inner">
                <a class="active" href="<?= site_url('home') ?>">Home</a>
                <a href="<?= site_url('home/faq') ?>">Faq</a>
            </div>
        </div>
    </div>
    <!--================End Banner Area =================-->

    <!--================Carrers Area =================-->
    <section class="carrers_area" style="padding: 40px 0px; !important">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel-group faq_ques" id="accordion" role="tablist" aria-multiselectable="true">
                        
                        
                        
                        <?php foreach($faq as $key => $value){ ?>
                        
                        <div class="panel panel-default" style="margin: 0;border: 0;">
                            <div class="panel-heading" role="tab" id="faq<?= $value->id ?>">
                                <h4 class="panel-title">
                                    <a style="background-color: var(--primary-color); color: #fff;" role="button" data-toggle="collapse" data-parent="#accordion" href="#faq_c<?= $value->id ?>"
                                        aria-expanded="true" aria-controls="company_c<?= $value->id ?>" class="collapsed">
                                        Q:   <?= $value->question ?>
                                        <i class="fa fa-plus" aria-hidden="true"></i><i class="fa fa-minus"
                                            aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="faq_c<?= $value->id ?>" class="panel-collapse collapse <?php echo ($key==0) ? 'in' : ''; ?>" role="tabpanel" aria-labelledby="faq<?= $value->id ?>">
                                <div class="panel-body">
                                    <?= $value->answer ?>
                                </div>
                            </div>
                        </div>
                        
                        
                        <?php } ?>
  
                       
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Carrers Area =================-->