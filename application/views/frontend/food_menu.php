<style>
    .Blurb img {
        width: 100%;
        height: 270px;
    }
    p.u-LineHeight2{
        height: 100px;
        overflow: hidden;
    }
</style>
<!--start-->
<div class="container u-PaddingTop150 u-sm-PaddingTop50" id="spa">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton" data-title="Signature">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Food Menu</h1>
    </div>
    <div class="row u-MarginTop150 u-sm-MarginTop50">
        
        <?php foreach($food_menus as $key=>$food_menu){ ?>
        <div class="col-md-4 col-sm-6 u-MarginBottom60">
            <div class="u-PaddingRight40 u-md-Padding0 u-sm-PaddingRight20 u-xs-PaddingLeft20">
                <div class="u-BoxShadow40">
                    <div class="Blurb">
                        <a href="#"><img class="img-responsive" src="<?= site_url($food_menu->path);?>" alt="..."></a>
                        <div class="u-Padding30 text-center">
                            <h5 class="u-Weight700 u-MarginTop0 text-uppercase"><a class="Blurb__hoverText link-normal" href="#"><?=$food_menu->name?></a></h5>
                            <p class="u-LineHeight2"><?=$food_menu->description?></p>
                            <p class="u-MarginTop25"><a class="u-Weight700 text-primary" href="#"><?=$food_menu->price?>TK</a></p>
                            
                            <p class="u-MarginTop50">
                                <a href="<?php echo site_url("/home/food_details/$food_menu->id");?>" class="btn btn-gradient btn--alien">See More</a>
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