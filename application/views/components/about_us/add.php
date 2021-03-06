<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>About Us</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("about_us/About_controller/add_process"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Video Link <!-- <span class="req">*</span> --></label>
                        <div class="col-md-5">
                            <input type="text" name="name" placeholder="https://www.youtube.com/watch?v=" class="form-control">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Photos <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="file" name="img" class="form-control" required>
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label"> Description <span class="req">*</span></label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="15"  placeholder="Enter Description..." class="form-control" id="mytextarea"></textarea>    
                        </div>
                    </div>                    
                    
                    
                    <div class="row">
                        <div class="col-md-9">
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
    
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>About Us</h1>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Img</th>
                        <th>Video Path</th>
                        <th width="700">Description</th>
                    </tr>
                   
                    <?php if($about_us){ foreach($about_us as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->path) ? "<img height='60' src='".site_url($value->path)."' alt=''" : ''; ?></td>
                        <td><?php echo isset($value->title) ? $value->title : ''; ?></td>
                        <td><?php echo isset($value->description) ? substr($value->description,0,100) : ''; ?></td>
                    </tr>
                    <?php }} ?>
                </table>
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