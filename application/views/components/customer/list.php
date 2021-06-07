<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Customer</h1>
                </div>
            </div>
            <div class="panel-body">
                 <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Name</th>
                        <th>Room No</th>
                        <th>NID</th>
                        <th>Mobile</th>
                        <th>Check In Date</th>
                        <th>Check Out Date</th>
                        <th width="180">Action</th>
                    </tr>
                   
                    <?php if($allCustomer){ foreach($allCustomer as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->name) ? $value->name : ''; ?></td>
                        <td><?php echo get_name('products', 'name', ['room_type'=>$value->room_no]); ?></td>
                        <td><?php echo isset($value->nid) ? $value->nid : ''; ?></td>
                        <td><?php echo isset($value->mobile) ? $value->mobile : ''; ?></td>
                        <td><?php echo isset($value->date_in) ? $value->date_in : ''; ?></td>
                        <td><?php echo isset($value->date_out) ? $value->date_out : ''; ?></td>
                        <td>
                            <a class="btn btn-success" href="<?php echo get_url("customer/customer/view/{$value->id}"); ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>
                            <a class="btn btn-warning" href="<?php echo get_url("customer/customer/edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <a class="btn btn-danger" href="<?php echo get_url("customer/customer/delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>