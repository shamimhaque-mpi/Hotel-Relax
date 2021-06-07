<div class="panel panel-default">
    <div class="panel-heading panal-header">
        <div class="panal-header-title pull-left">
            <h1>Add Header</h1>
        </div>
    </div>
    <div class="panel-body" style="position: relative;">
        <?php msg(); ?>
        <form action="<?php echo get_url("setting/setting/add_header"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
            
            <div class="form-group">
                <label class="col-md-2 control-label">Website Title</label>
                <div class="col-md-5">
                    <input type="text" value="<?php echo isset($header[0]->web_title) ? $header[0]->web_title : ''; ?>" name="site_title" placeholder="Enter Website Title..." class="form-control">
                </div>
            </div>
            
            
            
            <div class="form-group">
                <label class="col-md-2 control-label">Fev Icon</label>
                <div class="col-md-5">
                    <input type="file" name="fev_img" class=" file form-control">
                </div>
            </div>
            
            
            
            <div class="form-group">
                <div class="col-md-7">
                    <div class="pull-right">
                        <input type="submit" value="Save" class="btn btn-primary">
                    </div>
                </div>
            </div>
            <?php echo isset($header[0]->fev_icon) ? "<img height='60' style='position: absolute;top: 22px;right: 16%;' src='".site_url($header[0]->fev_icon)."' alt=''>" : ''; ?>
        </form>
    </div>
    <div class="panel-footer">&nbsp;</div>
</div>

<div class="panel panel-default">
    <div class="panel-heading panal-header">
        <div class="panal-header-title pull-left">
            <h1>Add Header Logo</h1>
        </div>
    </div>
    <div class="panel-body" style="position: relative;">
        <form action="<?php echo get_url("setting/setting/add_header_logo"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-md-2 control-label">Website Logo <span class="req">*</span></label>
                <div class="col-md-5">
                    <input type="file" name="web_logo" class="file form-control" required>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-md-7">
                    <div class="pull-right">
                        <input type="submit" value="Save" class="btn btn-primary">
                    </div>
                </div>
            </div>
            <?php echo isset($header[0]->web_logo) ? "<img height='60' style='position: absolute;top: 11px;right: 16%;' src='".site_url($header[0]->web_logo)."' alt=''>" : ''; ?>
        </form>
    </div>
    <div class="panel-footer">&nbsp;</div>
</div>

<div class="panel panel-default">
    <div class="panel-heading panal-header">
        <div class="panal-header-title pull-left">
            <h1>Add Food Menu</h1>
        </div>
    </div>
    <div class="panel-body" style="position: relative;">
        <form action="<?php echo get_url("setting/setting/add_food_menu"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-md-2 control-label">Food Menu (PDF) <span class="req">*</span></label>
                <div class="col-md-5">
                    <input type="file" name="food_menu" class="file form-control" required>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-md-7">
                    <div class="pull-right">
                        <input type="submit" value="Save" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">&nbsp;</div>
</div>

