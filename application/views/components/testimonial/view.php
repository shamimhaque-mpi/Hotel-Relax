    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Testimonial</h1>
                </div>
            </div>
            <div class="panel-body">
                 <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th>SL</th>
                        <th>Img</th>
                        <th>Name</th>
                        <th>Designation</th>
                        <th width="300">Description</th>
                        
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php if($testimonial){ foreach($testimonial as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->path) ? "<img height='60' src='".site_url($value->path)."' alt=''" : ''; ?></td>
                        <td><?php echo isset($value->name) ? $value->name : ''; ?></td>
                        <td><?php echo isset($value->designation) ? $value->designation : ''; ?></td>
                        <td><?php echo isset($value->description) ? substr($value->description,0,70) : ''; ?>...</td>
                      
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("testimonial/testimonial/edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                             <a class="btn btn-danger" href="<?php echo get_url("testimonial/testimonial/delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>