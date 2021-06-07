<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Search</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                ?>
                
                <form action="" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Income Field </label>
                        <div class="col-md-5">
                            <select name="income_field" class="form-control" >
                                <option disbaled selected>-- Select income field --</option>
                                <?php if(!empty($incomeField)){ foreach($incomeField as $row){ ?>
                                <option value="<?php echo $row->id; ?>" ><?php echo $row->name; ?></option>
                                <?php }} ?>
                            </select>
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Date From </label>
                        <div class="col-md-5 input-group date" id="datetimepicker1">
                            <input type="text" name="date[from]" placeholder="from"  class="form-control"  >
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Date To  </label>
                        <div class="col-md-5 input-group date" id="datetimepicker2">
                            <input type="text" name="date[to]" placeholder="to"  class="form-control"  >
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                   
                    
                   
                    
                   
                    
                    <div class="row">
                        <div class="col-md-7">
                            <div class="pull-right">
                                <input type="submit" value="Search" name="search" class="btn btn-primary">
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
      
        $('#datetimepicker1').datetimepicker({
        format: 'YYYY-MM-DD',
        useCurrent: false
    });
    
      $('#datetimepicker2').datetimepicker({
        format: 'YYYY-MM-DD',
        useCurrent: false
    });
    </script>
</div>
    
    
    
    
    <!--show result -->
    
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Income</h1>
                </div>
            </div>
            <div class="panel-body">
                 <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Date</th>
                        <th>Income Field</th>
                        <th>Income By </th>
                        <th>Description</th>
                        <th>Amount</th>
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php $total = 0; if(!empty($allIncome)){ foreach($allIncome as $key => $value){ ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->date) ? $value->date : ''; ?></td>
                        <td><?php echo get_name('income_field', 'name', ['id'=>$value->income_field]); ?></td>
                        <td><?php echo isset($value->income_by) ? $value->income_by : ''; ?></td>
                        <td><?php echo isset($value->description) ? substr(strip_tags($value->description),0,100) : ''; ?>...</td>
                        <td><?php echo isset($value->amount) ? $value->amount : ''; $total += $value->amount; ?></td>
                        <td>
                            <a class="btn btn-warning" href="<?php echo get_url("income/income/edit/{$value->id}"); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>

                             <a class="btn btn-danger" href="<?php echo get_url("income/income/delete/{$value->id}"); ?>" onclick="return confirm('Are your sure to proccess this action ?')"><i class="fa fa-trash-o" aria-hidden="true"></i></td></a>
                    </tr>
                    <?php }} ?>
                    
                    <tr>
                        <th colspan="5" class="text-right">Total Income </th>
                        <th colspan="2"><?php echo $total; ?> </th>
                    </tr>
                    
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>