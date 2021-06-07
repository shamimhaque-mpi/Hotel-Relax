<div class="panel panel-default">
    <div class="panel-heading panal-header">
        <div class="panal-header-title pull-left">
            <h1>All Quote</h1>
        </div>
    </div>
    <div class="panel-body">
        <table class="table table-bordered">
            <tr>
                <th width="50">SL</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Dtae From</th>
                <th>Dtae To</th>
                <th>Message</th>
            </tr>
           
            <?php if($quote){ foreach($quote as $key => $value){ ?>
            <tr>
                <td><?php echo $key+1; ?></td>
                <td><?php echo $value->name; ?></td>
                <td><?php echo $value->email; ?></td>
                <td><?php echo $value->tel; ?></td>
                <td><?php echo $value->date_from; ?></td>
                <td><?php echo $value->date_to; ?></td>
                <td><?php echo $value->message; ?></td>
            </tr>
            <?php }} ?>
        </table>
    </div>
    <div class="panel-footer">&nbsp;</div>
</div>
