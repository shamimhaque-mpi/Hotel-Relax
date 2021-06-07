<style>
    .Blurb img {
        width: 100%;
        height: 270px;
    }
</style>
<!--start-->
<div class="container u-PaddingBottom150 u-PaddingTop150 u-sm-PaddingTop50" id="blog">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton" data-title="Signature">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Blog</h1>
    </div>
    <div class="row u-MarginTop150 u-sm-MarginTop50">

        <?php foreach($blogs as $key=>$blog){?>
        <div class="col-md-4 col-sm-6 u-MarginBottom60">
            <div class="u-PaddingRight40 u-md-Padding0 u-sm-PaddingRight20 u-xs-PaddingLeft20">
                <div class="u-BoxShadow40">
                    <div class="Blurb">
                        <a href="#"><img class="img-responsive" src="<?php echo site_url($blog->path)?>" alt="..."></a>
                        <div class="u-Padding30 text-center">
                            <h5 class="u-Weight700 u-MarginTop0 text-uppercase"><a class="Blurb__hoverText link-normal" href="#"><?= $blog->title?></a></h5>
                            <p class="u-LineHeight2"><?=$blog->date?></p>
                            <p class="u-LineHeight2"><?=substr($blog->description, 0, 180)?>...</p>
                            <p class="u-MarginTop25"><a class="u-Weight700 text-primary" href="<?= site_url("home/blog_detail/$blog->id");?>">See More</a></p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <?php } ?>
    </div>
</div>
<!--end-->