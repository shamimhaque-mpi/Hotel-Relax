<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add New Room</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("spa/spa/add_process"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Name <span class="req">*</span> </label>
                        <div class="col-md-5">
                            <input type="text" name="name" placeholder="Enter spa name..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Type <span class="req">*</span> </label>
                        <div class="col-md-5">
                            <select name="room_type" class="form-control" required>
                                <option vlaue="" selected disabled>-- Select One --</option>
                                <option value="suite">Suite</option>
                                <option value="deluxe_vip">Deluxe VIP</option>
                                <option value="single_room">Single Room</option>
                                <option value="deluxe_twin">Deluxe Twin</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Room Price  <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" name="price" placeholder="Enter spa price..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description</label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15"  placeholder="Enter Description..." class="form-control" id="mytextarea"></textarea>    
                        </div>
                    </div> 
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="file" name="img" class="form-control" required>
                        </div>
                    </div>
                    
                    
                                       
                    
                    
                    <div class="row">
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
    </div>
    
    <script>
      tinymce.init({
        selector: '#mytextarea'
      });
    </script>
    
    
</div>