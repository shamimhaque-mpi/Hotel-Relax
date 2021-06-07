<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Category</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($cake_weight==false){
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
                
                <?php $id = isset($cake_weight[0]->id) ? $cake_weight[0]->id : ''; ?>
                <form action="<?php echo get_url("cake_weight/Cake_weight_controller/edit_process/$id"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Cake Weight <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="cake_weight" value="<?php echo isset($cake_weight[0]->cake_weight) ? $cake_weight[0]->cake_weight : ''; ?>" placeholder="Enter Cake Weight..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-7">
                            <div class="pull-right">
                                <input type="submit" value="Update" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>