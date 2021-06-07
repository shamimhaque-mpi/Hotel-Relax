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
                    if($img==false){
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
                
                <?php $id = isset($img[0]->id) ? $img[0]->id : ''; ?>
                <form action="<?php echo get_url("gallery/gallery_controller/img_edit_process/{$img[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Image Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="img_name" value="<?php echo isset($img[0]->img_name) ? $img[0]->img_name : ''; ?>" placeholder="Enter Image Name..." class="form-control" required>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($img[0]->img_path) ? $img[0]->img_path : ''; ?>" >
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
                           <?php echo isset($img[0]->img_path) ? "<img style='display:block; width:100px;' src='".site_url($img[0]->img_path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>