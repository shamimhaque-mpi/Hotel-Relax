<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("cake/Cake_controller/add_process"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Cake Type <span class="req">*</span></label>
                        <div class="col-md-5">
                            <select name="cake_type_id" class="form-control" required>
                                <option value="" select>--Select--</option>
                                <?php if($category){foreach($category as $key => $value){ ?>
                                <option value="<?php echo $value->id; ?>"><?php echo ucwords($value->name); ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input name="name" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Description <span class="req">*</span></label>
                        <div class="col-md-8">
                            <textarea name="description" id="tinyTextarea" class="form-control" rows="8" placeholder="Write Description..."></textarea>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-10">
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
</div>