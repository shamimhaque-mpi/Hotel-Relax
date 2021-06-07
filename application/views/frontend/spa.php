<style>
    .Blurb img {
        width: 100%;
        height: 270px;
    }
    .demo_card{

    }
</style>
<div class="container u-PaddingTop150 u-sm-PaddingTop50" id="spa">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton" data-title="Silver Castle">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Spa</h1>
    </div>
    <div class="row u-MarginTop150 u-sm-MarginTop50">
        <?php  foreach ($spa as $key => $value) { ?>
        <div class="col-md-4 col-sm-6 u-MarginBottom60">
            <div class="u-PaddingRight40 u-md-Padding0 u-sm-PaddingRight20 u-xs-PaddingLeft20">
                <div class="u-BoxShadow40">
                    <div class="Blurb">
                        <a href="<?=site_url("home/room_detail/$value->id")?>"><img class="img-responsive" src="<?php echo site_url($value->path)?>" alt="..."></a>
                        <div class="u-Padding30 text-center">
                            <h5 class="u-Weight700 u-MarginTop0 text-uppercase"><a class="Blurb__hoverText link-normal" href="#"><?=$value->name?></a></h5>
                            <p class="u-LineHeight2 text-capitalize">Type: <?= str_replace('_', ' ', $value->room_type) ?></p>
                            <p class="u-MarginTop25"><a class="u-Weight700 text-primary" href="#">BDT. <?= number_format($value->price,2) ?></a></p>
                            <a href="<?=site_url("home/spa_detail/$value->id")?>" class="btn btn-gradient btn--alien">More Details</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>