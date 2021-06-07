<!--start-->
<section class="u-PaddingTop50 u-PaddingBottom150 u-sm-PaddingTop50" id="food_menu">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton u-PaddingBottom50" data-title="Silver Castle">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Saloon Details</h1>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img class="img-responsive" src="<?php echo site_url($saloon[0]->path);?>" alt=""/>
            </div>
            <div class="col-md-7">
                <div class="u-BoxShadow100">
                    <div class="u-PaddingTop30 u-PaddingBottom30 u-PaddingLeft50 u-PaddingRight50 u-BorderRadius6">
                        <h3 class="Blurb__hoverText u-MarginTop0 u-Weight600"><?= $saloon[0]->name; ?></h3>
                        <p><?= $saloon[0]->description; ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--end-->
