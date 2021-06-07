<!--start-->
<div class="container u-PaddingTop50 u-sm-PaddingTop50 u-PaddingBottom150 u-sm-PaddingBottom50" id="room">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton u-PaddingBottom50" data-title="Silver Castle">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Saloon</h1>
    </div>

        <?php  foreach ($saloons as $key => $saloon) { ?>
        <div class="col-md-4 col-sm-6 u-MarginBottom60 ">
            <div class="u-PaddingRight40 u-md-Padding0 u-sm-PaddingRight20 u-xs-PaddingLeft20">
                <div class="u-BoxShadow40">
                    <div class="Blurb">
                        <a href="#"><img class="img-responsive" src="<?php echo site_url($saloon->path)?>" alt="..."></a>
                        <div class="u-Padding30 text-center">
                            <h5 class="u-Weight700 u-MarginTop0 text-uppercase"><a class="Blurb__hoverText link-normal" href="#"><?=$saloon->name?></a></h5>
                            <p class="u-LineHeight2"><?=substr($saloon->description, 0, 80)?>...</p>

                            <p class="u-MarginTop50 text-center">
                                <a href="<?= site_url("home/saloon_details/$saloon->id");?>" class="btn btn-gradient btn--alien">Read More</a>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>

    </div>
</div>
<!--end-->