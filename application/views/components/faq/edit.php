<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Faq</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($faq==false){
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
                
                <?php $id = isset($faq[0]->id) ? $faq[0]->id : ''; ?>
                <form action="<?php echo get_url("faq/faq/edit_process/{$faq[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <label class="col-md-2 control-label">Question <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="question" value="<?php echo isset($faq[0]->question) ? $faq[0]->question : ''; ?>" placeholder="Enter question..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Answer <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="answer" value="<?php echo isset($faq[0]->answer) ? $faq[0]->answer : ''; ?>" placeholder="Enter answer..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Video Link <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="link" value="<?php echo isset($faq[0]->link) ? $faq[0]->link : ''; ?>" placeholder="Enter video extension..." class="form-control" required>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($faq[0]->path) ? $faq[0]->path : ''; ?>" >
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
                           <?php echo isset($faq[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($faq[0]->path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>