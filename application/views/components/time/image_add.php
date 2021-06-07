<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add Time Image</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo site_url("time/time/add_image"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Image Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="img_name" placeholder="Enter Image Name..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos (Image Size less 1mb) <span class="req">*</span></label>
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
</div>



    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Time Image</h1>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Img</th>
                        <th>Name</th>
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php if($time){ foreach($time as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->name) ? "<img height='60' src='".site_url($value->path)."' alt=''" : ''; ?></td>
                        <td><?php echo isset($value->path) ? $value->name : ''; ?></td>
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("time/time/img_edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <!--<a class="btn btn-danger" href="<?php echo get_url("time/time/img_delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>-->
                        </td>
                    </tr>
                    <?php }}else{ echo "<h2 class='text-center'>no data</h2>";} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>