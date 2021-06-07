<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit cost</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($cost==false){
                ?>
                <div class="alert alert_warning">
                    <div class="icon"><i class="fa fa-exclamation-triangle"></i></div>
	                <div class="content">
	                    <div>
	                        <strong>Warning!</strong> <br>
	                    </div>
	                    <div>No Resoult Found !</div>
	                </div>
	            </div>
                <?php return; } ?>
                
                <?php $id = isset($cost[0]->id) ? $cost[0]->id : ''; ?>
                <form action="<?php echo get_url("cost/cost/edit_process/{$cost[0]->id}"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    
                     <div class="form-group">
                        <label class="col-md-2 control-label">Date  <span class="req">*</span></label>
                        <div class="col-md-5 input-group date" id="datetimepicker">
                            <input type="text" name="date" value="<?= date('Y-m-d'); ?>" class="form-control"  required>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Cost Field <span class="req">*</span></label>
                        <div class="col-md-5">
                            <select name="cost_field" class="form-control" required>
                                <?php if(!empty($costField)){ foreach($costField as $row){ ?>
                                <option value="<?php echo $row->id; ?>" <?php if($row->id == $cost[0]->cost_field){ echo "selected"; } ?>><?php echo $row->name; ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Amount <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" min="0" step="any" name="amount" value="<?php echo $cost[0]->amount; ?>" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Spend By </label>
                        <div class="col-md-5">
                            <input type="text" name="spend_by" value="<?php echo $cost[0]->spend_by; ?>" class="form-control" >
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label"> Remark </label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="8"  placeholder="Enter Description..." class="form-control" id="tinyTextarea"><?php echo $cost[0]->description; ?></textarea>    
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
    <script>
      tinymce.init({
        selector: '#mytextarea'
      });
      $('#datetimepicker').datetimepicker({
        format: 'YYYY-MM-DD',
        useCurrent: false
    });
    </script>
</div>