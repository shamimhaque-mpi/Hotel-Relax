<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Food</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($food_menu==false){
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
                
                <?php $id = isset($food_menu[0]->id) ? $food_menu[0]->id : ''; ?>
                <form action="<?php echo get_url("food_menu/food_menu/edit_process/{$food_menu[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Food Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo isset($food_menu[0]->name) ? $food_menu[0]->name : ''; ?>" placeholder="Enter Food Name..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Food Price <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" name="price" value="<?php echo isset($food_menu[0]->price) ? $food_menu[0]->price : ''; ?>" placeholder="Enter Food Price..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Sort No <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="sort" value="<?php echo isset($food_menu[0]->sort) ? $food_menu[0]->sort : ''; ?>"  class="form-control">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description <span class="req">*</span></label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15" placeholder="Enter Description..." class="form-control" id="mytextarea"><?php echo isset($food_menu[0]->description) ? $food_menu[0]->description : ''; ?></textarea>    
                        </div>
                    </div>  
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($food_menu[0]->path) ? $food_menu[0]->path : ''; ?>" >
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
                           <?php echo isset($food_menu[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($food_menu[0]->path)."' alt=''" : ''; ?>
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