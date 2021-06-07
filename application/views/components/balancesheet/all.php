<style>
    .balance {
        text-align:center;
        font-size:18px;
        padding:10px;
    }
</style>

<!--search or filtering section -->
<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Search</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                
                
                
                <form action="" class="form-horizontal" method="post" >

                    <div class="form-group">
                        <label class="col-md-2 control-label">Date From <span class="req">*</span></label>
                        <div class="col-md-5 input-group date" id="datetimepicker1">
                            <input type="text" name="from"  class="form-control" placeholder="From" required>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Date To <span class="req">*</span></label>
                        <div class="col-md-5 input-group date" id="datetimepicker2">
                            <input type="text" name="to"  class="form-control" placeholder="To" required>
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
</div>



<!--result sum section-->

<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Result</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                
                <?php $totalIncome = 0; if(!empty($allIncome)){ ?>
                <h4 class="text-primary">Income Table</h4>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th>#</th>
                        <th>Date</th>
                        <th>Income Field</th>
                        <th>Income By</th>
                        <th>Amount</th>
                    </tr>
                    
                    <?php  foreach($allIncome as $key => $income){ ?>
                    <tr>
                        <td><?php echo $key+1; ?></td>
                        <td><?php echo $income->date; ?></td>
                        <td><?php echo get_name('income_field', 'name', ['id'=>$income->income_field]); ?></td>
                        <td><?php echo $income->income_by; ?></td>
                        <td><?php echo $income->amount; $totalIncome += $income->amount; ?></td>
                    </tr>
                    <?php } ?>
                    
                    <tr>
                        <td colspan="4" class="text-right">Total Income </td>
                        <td> <?php echo $totalIncome; ?> Tk</td>
                    </tr>
                    
                </table>
                <?php } ?>
                
                
                <?php $totalCost = 0; if(!empty($allCost)){ ?>
                <h4 class="text-primary">Cost Table</h4>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th>#</th>
                        <th>Date</th>
                        <th>Cost Field</th>
                        <th>Cost By</th>
                        <th>Amount</th>
                    </tr>
                    
                    <?php  foreach($allCost as $key => $cost){ ?>
                    <tr>
                        <td><?php echo $key+1; ?></td>
                        <td><?php echo $cost->date; ?></td>
                        <td><?php echo get_name('cost_field', 'name', ['id'=>$cost->cost_field]); ?></td>
                        <td><?php echo $cost->spend_by; ?></td>
                        <td><?php echo $cost->amount; $totalCost += $cost->amount; ?></td>
                    </tr>
                    <?php } ?>
                    
                    <tr>
                        <td colspan="4" class="text-right">Total Cost </td>
                        <td> <?php echo $totalCost; ?> Tk</td>
                    </tr>
                    
                </table>
                <?php } ?>
                
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6 bg-primary  balance">Total Income : <?php echo $income = $totalIncome; ?> TK</div>
                        <div class="col-md-6 bg-danger balance">Total Cost  : <?php echo $cost = $totalCost; ?> TK</div>
                    </div>
                    
                    <div class="row bg-success " style="margin-top:30px;">
                        <div class="balance">Balance : <?php echo $income-$cost; ?> TK</div>  
                    </div>
                </div>
               
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>


<script>
    $('#datetimepicker1').datetimepicker({
        format: 'YYYY-MM-DD',
        useCurrent: false
    });
    
    $('#datetimepicker2').datetimepicker({
        format: 'YYYY-MM-DD',
        useCurrent: false
    });
    
    
</script>