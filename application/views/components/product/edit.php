<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Room</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($product==false){
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
                
                <?php $id = isset($product[0]->id) ? $product[0]->id : ''; ?>
                <form action="<?php echo get_url("product/product/edit_process/{$product[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo isset($product[0]->name) ? $product[0]->name : ''; ?>" placeholder="Enter Product Name..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Type <span class="req">*</span> </label>
                        <div class="col-md-5">
                            <select name="room_type" class="form-control" required>
                                <option vlaue="" selected disabled>-- Select One --</option>
                                <option value="deluxe" <?php if($product[0]->room_type == "deluxe"){echo "selected";} ?>>Deluxe</option>
                                <option value="executive_deluxe" <?php if($product[0]->room_type == "executive_deluxe"){echo "selected";} ?>>Executive Deluxe</option>
                                <option value="executive_double" <?php if($product[0]->room_type == "executive_double"){echo "selected";} ?>>Executive Double</option>
                                <option value="executive_single" <?php if($product[0]->room_type == "executive_single"){echo "selected";} ?>>Executive Single</option>
                                <option value="family_suite" <?php if($product[0]->room_type == "family_suite"){echo "selected";} ?>>Family Suite</option>
                                <option value="junior_suite" <?php if($product[0]->room_type == "junior_suite"){echo "selected";} ?>>Junior Suite</option>
                                <option value="royal_suite" <?php if($product[0]->room_type == "royal_suite"){echo "selected";} ?>>Royal Suite</option>
                                <option value="superior_deluxe" <?php if($product[0]->room_type == "superior_deluxe"){echo "selected";} ?>>Superior Deluxe</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Price <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" name="price" value="<?php echo isset($product[0]->price) ? $product[0]->price : ''; ?>" placeholder="Enter Product Price..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Discount <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="discount" value="<?php echo isset($product[0]->discount) ? $product[0]->discount : ''; ?>" placeholder="Enter Product discount..." class="form-control" required>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description <span class="req">*</span></label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15" placeholder="Enter Description..." class="form-control" id="mytextarea"><?php echo isset($product[0]->description) ? $product[0]->description : ''; ?></textarea>    
                        </div>
                    </div>  
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($product[0]->path) ? $product[0]->path : ''; ?>" >
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
                           <?php echo isset($product[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($product[0]->path)."' alt=''" : ''; ?>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
    <script>
      tinymce.init({
        selector: '#mytextarea'
      });
    </script>
</div>