<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Cost Field</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("cost/cost/update_costField/".$costField[0]->id); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" value="<?php echo $costField[0]->name; ?>" class="form-control" required>
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