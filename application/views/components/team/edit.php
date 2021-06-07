<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Top Management</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($team==false){
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
                
                <?php $id = isset($team[0]->id) ? $team[0]->id : ''; ?>
                <form action="<?php echo get_url("team/team/edit_process/{$team[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Employee Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo isset($team[0]->name) ? $team[0]->name : ''; ?>" placeholder="Enter Product Name..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Employee Designation <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="designation" value="<?php echo isset($team[0]->designation) ? $team[0]->designation : ''; ?>" placeholder="Enter designation..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Employee Phone <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="phone" value="<?php echo isset($team[0]->phone) ? $team[0]->phone : ''; ?>" placeholder="Enter designation..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Google Link <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="g_link" value="<?php echo isset($team[0]->g_link) ? $team[0]->g_link : ''; ?>" placeholder="Enter G_link..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Facebook Link</label>
                        <div class="col-md-5">
                            <input type="text" name="fb_link" value="<?php echo isset($team[0]->fb_link) ? $team[0]->fb_link : ''; ?>" placeholder="Enter Fb_link..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Instagram Link</label>
                        <div class="col-md-5">
                            <input type="text" name="in_link" value="<?php echo isset($team[0]->in_link) ? $team[0]->in_link : ''; ?>" placeholder="Enter In_link..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description </label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15" placeholder="Enter Description..." class="form-control" id="mytextarea"><?php echo isset($team[0]->description) ? $team[0]->description : ''; ?></textarea>    
                        </div>
                    </div>  
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($team[0]->path) ? $team[0]->path : ''; ?>" >
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
                           <?php echo isset($team[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($team[0]->path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>
<script>
  tinymce.init({
    selector: '#mytextarea'
  });
</script>