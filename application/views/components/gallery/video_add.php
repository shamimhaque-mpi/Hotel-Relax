<div class="container-fluid" style="border: 3px solid red;">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add Video</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("gallery/gallery_controller/add_video"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Video Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="vdo_name" placeholder="Enter video Name..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">video Link <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="vdo_path" placeholder="Enter Video extension..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">video Photos <span class="req">*</span></label>
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
                    <h1>All Video</h1>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Img</th>
                        <th>Name</th>
                        <th>video_path</th>
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php if($video){ foreach($video as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->vdo_img_path) ? "<img height='60' src='".site_url($value->vdo_img_path)."' alt=''" : ''; ?></td>
                        <td><?php echo isset($value->vdo_name) ? $value->vdo_name : ''; ?></td>
                        <td><?php echo isset($value->vdo_path) ? $value->vdo_path : ''; ?></td>
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("gallery/gallery_controller/vdo_edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <a class="btn btn-danger" href="<?php echo get_url("gallery/gallery_controller/vdo_delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <?php }}else{ echo "<h2 class='text-center'>no data</h2>";} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>