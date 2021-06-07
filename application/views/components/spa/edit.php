<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Spa</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($spa==false){
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
                
                <?php $id = isset($spa[0]->id) ? $spa[0]->id : ''; ?>
                <form action="<?php echo get_url("spa/spa/edit_process/{$spa[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo isset($spa[0]->name) ? $spa[0]->name : ''; ?>" placeholder="Enter spa Name..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Type <span class="req">*</span> </label>
                        <div class="col-md-5">
                            <select name="room_type" class="form-control" required>
                                <option value="suite" <?php if($spa[0]->room_type == "suite"){echo "selected";} ?>>Suite</option>
                                <option value="deluxe_vip" <?php if($spa[0]->room_type == "deluxe_vip"){echo "selected";} ?>>Deluxe VIP</option>
                                <option value="single_room" <?php if($spa[0]->room_type == "single_room"){echo "selected";} ?>>Single Room</option>
                                <option value="deluxe_twin" <?php if($spa[0]->room_type == "deluxe_twin"){echo "selected";} ?>>Deluxe Twin</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Price <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" name="price" value="<?php echo isset($spa[0]->price) ? $spa[0]->price : ''; ?>" placeholder="Enter spa Price..." class="form-control" required>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description <span class="req">*</span></label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15" placeholder="Enter Description..." class="form-control" id="mytextarea"><?php echo isset($spa[0]->description) ? $spa[0]->description : ''; ?></textarea>    
                        </div>
                    </div>  
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos</label>
                        <div class="col-md-5">
                            <input type="hidden" name="old_img" value="<?php echo isset($spa[0]->path) ? $spa[0]->path : ''; ?>" >
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
                           <?php echo isset($spa[0]->path) ? "<img style='display:block; width:100px;' src='".site_url($spa[0]->path)."' alt=''" : ''; ?>
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