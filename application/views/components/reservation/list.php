<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Search Reservation</h1>
                </div>
            </div>
            <div class="panel-body">
                <form action="" method="post">
                    <div class="row">
                        <div class="col-md-3">
                            <input type="date" name="from" class="form-control">
                        </div>
                        <div class="col-md-3">
                            <input type="date" name="to" class="form-control">
                        </div>
                        <div class="col-md-3">
                            <input type="text" name="phone" class="form-control" placeholder="phone">
                        </div>
                        <div class="col-md-3">
                            <input type="submit" class="btn btn-success" value="Search">
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>All Reservation</h1>
                </div>
            </div>
            <div class="panel-body">
                 <?php msg(); ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="50">SL</th>
                        <th>Date</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Room</th>
                        <th>Adress</th>
                        <th>Trx ID</th>
                        <th>Check in date</th>
                        <th>Check out date</th>
                        <th>Nationality</th>
                        <th width="115">Action</th>
                    </tr>
                   
                    <?php if($reservations){ foreach($reservations as $key => $value){ ?>
                    <?php
                        $room = read('products', ['id'=>$value->room_no]);
                    ?>
                    <tr>
                        <td><?php echo ++$key; ?></td>
                        <td><?php echo isset($value->date) ? ucwords($value->date) : ''; ?></td>
                        <td><?php echo isset($value->name) ? ucwords($value->name) : ''; ?></td>
                        <td><?php echo isset($value->phone) ? ucwords($value->phone) : ''; ?></td>
                        <td><?=($room ? $room[0]->name : 'N/A')?></td>
                        <td><?php echo isset($value->address) ? ucwords($value->address) : ''; ?></td>
                        <td><?php echo isset($value->trx_id) ? ucwords($value->trx_id) : ''; ?></td>
                        <td><?php echo isset($value->check_in_date) ? ucwords($value->check_in_date) : ''; ?></td>
                        <td><?php echo isset($value->check_out_date) ? ucwords($value->check_out_date) : ''; ?></td>
                        <td><?php echo isset($value->nationality) ? ucwords($value->nationality) : ''; ?></td>
                        <td>
                            <a class="btn btn-info" href="<?php echo get_url("reservation/reservation/view/{$value->id}"); ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>