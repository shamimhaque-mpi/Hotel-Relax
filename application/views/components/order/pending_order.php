<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Pending Order</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Name</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>Total Quantity</th>
                        <th>Total Price</th>
                        <th width="161" class="none">Action</th>
                    </tr>
                   
                    <?php
                        $total_quantity = $grand_total_price = 0;
                        if($pending_report){ foreach($pending_report as $key => $value){
                    ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->name) ? $value->name : ''; ?></td>
                        <td><?php echo isset($value->mobile) ? $value->mobile : ''; ?></td>
                        <td><?php echo isset($value->address) ? $value->address : ''; ?></td>
                        <td>
                            <?php
                                $quantity = isset($value->total_quantity) ? $value->total_quantity : '';
                                echo $quantity;
                                $total_quantity += $quantity;
                            ?>
                        </td>
                        <td>
                            <?php
                                $total_price = isset($value->total_price) ? $value->total_price : '';
                                echo $total_price;
                                $grand_total_price += $total_price;
                            ?>
                        </td>
                        <td class="none">
                            <?php
                                if($action_menus){
                                    foreach($action_menus as $action_menu){
                                        if($user_data['privilege']=='president' xor (!empty($aside_action_menu_array) && in_array($action_menu->id,$aside_action_menu_array) && $user_data['privilege']!=='president')){
                                        // -----------------------------------------------------------
                                        if(strtolower($action_menu->name) == "delete" ){?>
                                            <a class="btn btn-<?php echo $action_menu->type;?>" onclick="return confirm('Are your sure to proccess this action ?')"  href="<?php echo get_url($action_menu->controller_path."/".$value->id); ?>"><i class="<?php echo $action_menu->icon;?>" aria-hidden="true"></i></a>
                                        <?php }else{ ?>
                                            <a class="btn btn-<?php echo $action_menu->type;?>"  href="<?php echo get_url($action_menu->controller_path."/".$value->id) ;?>"><i class="<?php echo $action_menu->icon;?>" aria-hidden="true"></i></a>
                                        <!---------------------------------------->
                            <?php }}}} ?>
                        </td>
                    </tr>
                    <?php }} ?>
                    <tr>
                        <th colspan="4" style="text-align: right;">Total</th>
                        <th><?php echo $total_quantity; ?>Pcs</th>
                        <th><?php echo $grand_total_price; ?>TK</th>
                        <th></th>
                    </tr>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>