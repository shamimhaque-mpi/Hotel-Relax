<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Order Details</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <!--order basic information start-->
                <table class="table table-bordered">
                    <caption>Basic Information</caption>
                    <tr>
                        <th width="90">Name</th>
                        <td><?php echo ($pending_order_details && isset($pending_order_details[0]->name)) ? $pending_order_details[0]->name : ''; ?></td>
                        <th width="100">Mobile</th>
                        <td width="120"><?php echo ($pending_order_details && isset($pending_order_details[0]->mobile)) ? $pending_order_details[0]->mobile : ''; ?></td>
                        <th width="120">Text On Cake</th>
                        <td><?php echo ($pending_order_details && isset($pending_order_details[0]->text_on_cake)) ? $pending_order_details[0]->text_on_cake : ''; ?></td>
                    </tr>
                    <tr>
                        <th width="100">Cake For</th>
                        <td><?php echo ($pending_order_details && isset($pending_order_details[0]->cake_for)) ? $pending_order_details[0]->cake_for : ''; ?></td>
                        <th width="100">Address</th>
                        <td colspan="3"><?php echo ($pending_order_details && isset($pending_order_details[0]->address)) ? $pending_order_details[0]->address : ''; ?></td>
                    </tr>
                </table>
                <!--order basic information end-->
                
                
                <!--ordered product information start-->
                <table class="table table-bordered">
                    <caption>Product Information</caption>
                    <tr>
                        <th>SL</th>
                        <th>Product Name</th>
                        <th width="50">Photo</th>
                        <th>Cake Type</th>
                        <th>Weight</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                    </tr>
                    <?php
                        $grandTotal = 0;
                        if($pending_order_details){foreach($pending_order_details as $key => $value){
                    ?>
                    <?php
                        $product_id = $value->product_id;
                        $query = "  SELECT
                                        cakes.name as cake_name,
                                        categories.name cake_type,
                                        categories.path
                                    FROM
                                        `cakes`
                                    JOIN categories ON cakes.cake_type_id = categories.id
                                    WHERE
                                        cakes.id = $product_id
                                ";
                        $product_info = $this->db->query($query)->result();
                    ?>
                    
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td>
                            <?php if($product_info && isset($product_info[0]->cake_name)){ echo $product_info[0]->cake_name; } ?>
                        </td>
                        <td><img height="50" src="<?php if($product_info && isset($product_info[0]->path)){ echo site_url($product_info[0]->path); } ?>" alt="Cake Photo"></td>
                        <td>
                            <?php if($product_info && isset($product_info[0]->cake_type)){ echo $product_info[0]->cake_type; } ?>
                        </td>
                        <td><?php echo $value->weight; ?> Pound</td>
                        <td><?php echo $value->quantity; ?></td>
                        <td>
                            <?php
                                $total_price = (($value->price_per_pound*$value->weight)*$value->quantity);
                                $grandTotal += $total_price;
                                echo $total_price."TK";
                            ?>
                        </td>
                    </tr>
                    <?php }} ?>
                    <tr>
                        <th colspan="6" style="text-align: right;">Grand Total</th>
                        <th><?php echo $grandTotal; ?>TK</th>
                    </tr>
                </table>
                <!--ordered product information end-->
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>