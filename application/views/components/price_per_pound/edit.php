<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Update</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    $id = ($price_per_pound && isset($price_per_pound[0]->id)) ? $price_per_pound[0]->id : '';
                ?>
                <form action="<?php echo get_url("price_per_pound/Price_per_pound_controller/edit_process/$id"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Cake Type <span class="req">*</span></label>
                        <div class="col-md-5">
                            <select name="cake_type_id" class="form-control" required>
                                <option value="" select>--Select--</option>
                                <?php if($category){foreach($category as $key => $value){ ?>
                                <option <?php echo ($price_per_pound && $price_per_pound[0]->cake_type_id==$value->id) ? "selected" : ''; ?> value="<?php echo $value->id; ?>"><?php echo ucwords($value->name); ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Price <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input name="price" value="<?php echo ($price_per_pound && $price_per_pound[0]->price) ? $price_per_pound[0]->price : ''; ?>" type="number" min="0" step="any" class="form-control" placeholder="Price Per Pound..." required>
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