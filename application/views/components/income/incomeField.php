<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Income Field</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("income/income/add_incomeField"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Name <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="name" class="form-control" required>
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
    
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Income Field</h1>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Name</th>
                        <th>Action</th>
                    </tr>
                   
                    <?php if(!empty($incomeField)){ foreach($incomeField as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->name) ? $value->name : ''; ?></td>
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("income/income/edit_incomeField/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>

                             <a class="btn btn-danger" href="<?php echo get_url("income/income/delete_incomeField/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></td></a>
                   
                        </td>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>    
    
    
</div>