    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Convention Center</h1>
                </div>
            </div>
            <div class="panel-body">
                 <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Img</th>
                        <th>Name</th>
                        <th width="500">Description</th>
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php if($convention_center){ foreach($convention_center as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->path) ? "<img height='60' src='".site_url($value->path)."' alt=''" : ''; ?></td>
                        <td><?php echo isset($value->name) ? ucwords($value->name) : ''; ?></td>
                        <td><?php echo isset($value->description) ? ucfirst($value->description) : ''; ?></td>
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("convention_center/convention_center/edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <a class="btn btn-danger" href="<?php echo get_url("convention_center/convention_center/delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>