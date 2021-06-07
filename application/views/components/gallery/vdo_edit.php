<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Image</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($video==false){
                ?>
                <div class="alert alert_warning">
                    <div class="icon"><i class="fa fa-exclamation-triangle"></i></div>
	                <div class="content">
	                    <div>
	                        <strong>Warning!</strong> <br>
	                    </div>
	                    <div>No Resoult Found !</div>
	                </div>
	            </div>
                <?php return; } ?>
                
                <?php $id = isset($video[0]->id) ? $video[0]->id : ''; ?>
                <form action="<?php echo get_url("gallery/gallery_controller/vdo_edit_process/{$video[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Video Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="vdo_name" value="<?php echo isset($video[0]->vdo_name) ? $video[0]->vdo_name : ''; ?>" placeholder="Enter video Name..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Video Link <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="vdo_path" value="<?php echo isset($video[0]->vdo_path) ? $video[0]->vdo_path : ''; ?>" placeholder="Enter vidoe path..." class="form-control" required>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($video[0]->vdo_img_path) ? $video[0]->vdo_img_path : ''; ?>" >
                            <input type="file" name="img" class="form-control">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-7">
                            <div class="pull-right">
                                <input type="submit" value="Update" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label"></label>
                        <div class="col-md-5">
                           <?php echo isset($video[0]->vdo_img_path) ? "<img style='display:block; width:100px;' src='".site_url($video[0]->vdo_img_path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>