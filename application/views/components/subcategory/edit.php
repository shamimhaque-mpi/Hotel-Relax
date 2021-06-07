<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Subcategory</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($subcategory==false){
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
                
                <?php $id = isset($subcategory[0]->id) ? $subcategory[0]->id : ''; ?>
                <form action="<?php echo get_url("subcategory/subcategory_controller/edit_process/$id"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Category Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <select name="cat_id" class="form-control" required>
                                <option value="">-Select Category-</option>
                                <?php if($category){foreach($category as $key => $value){ ?>
                                <option <?php echo ($subcategory[0]->cat_id == $value->id && isset($subcategory[0]->cat_id)) ? "selected" : ''; ?> value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Subcategory Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo isset($subcategory[0]->name) ? $subcategory[0]->name : ''; ?>" placeholder="Enter Subcategory Name..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($subcategory[0]->path) ? $subcategory[0]->path : ''; ?>" >
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
                           <?php echo isset($subcategory[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($subcategory[0]->path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>