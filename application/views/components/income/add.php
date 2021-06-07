<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add New income</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("income/income/add_process"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Date  <span class="req">*</span></label>
                        <div class="col-md-5 input-group date" id="datetimepicker">
                            <input type="text" name="date" value="<?= date("Y-m-d"); ?>" class="form-control"  required>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Income Field <span class="req">*</span></label>
                        <div class="col-md-5">
                            <select name="income_field" class="form-control" required>
                                <option selected disabled>-- Select income field --</option>
                                <?php if(!empty($incomeField)){ foreach($incomeField as $row){ ?>
                                <option value="<?php echo $row->id; ?>"><?php echo $row->name; ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Amount <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="number" min="0" step="any" name="amount" placeholder="0" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Income By </label>
                        <div class="col-md-5">
                            <input type="text" name="income_by" placeholder="income by" class="form-control" >
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label"> Remark </label>
                        <div class="col-md-7">
                            <textarea  name="description" rows="8"  placeholder="Enter Description..." class="form-control" id="tinyTextarea"></textarea>    
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