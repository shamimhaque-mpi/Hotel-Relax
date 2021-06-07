<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Registration Card</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <?php if($reservation){ ?>
                <?php
                    $room = read('products', ['id'=>$reservation[0]->room_no]);
                ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="100">Room</th>
                        <td><?=($room ? $room[0]->name:'')?></td>
                        
                        <th width="100">National ID/Passport/DL</th>
                        <td colspan="3"><?=($reservation[0]->national_id)?></td>
                    </tr>
                    <tr>
                        <th width="200">Registration</th>
                        <td><?=($reservation[0]->regi_id)?></td>
                        <th width="200">Name</th>
                        <td><?=($reservation[0]->name)?></td>
                        <th width="200">Gender</th>
                        <td><?=($reservation[0]->gender)?></td>
                    </tr>
                    <tr>
                        <th width="200">Age</th>
                        <td><?=($reservation[0]->age)?></td>
                        <th width="200">Natinality</th>
                        <td><?=($reservation[0]->nationality)?></td>
                        <th width="200">Home Address</th>
                        <td><?=($reservation[0]->address)?></td>
                    </tr>
                    <tr>
                        <th width="200">Check in date</th>
                        <td><?=($reservation[0]->check_in_date)?></td>
                        <th width="200">Check out date</th>
                        <td><?=($reservation[0]->check_out_date)?></td>
                        <th width="200">Profession</th>
                        <td><?=($reservation[0]->profession)?></td>
                    </tr>
                    <tr>
                        <th width="200">Additional Person</th>
                        <td><?=($reservation[0]->additional_person)?></td>
                        <th width="200">E-mail</th>
                        <td><?=($reservation[0]->email)?></td>
                        <th width="200">Phone</th>
                        <td><?=($reservation[0]->phone)?></td>
                    </tr>
                    <tr>
                        <th width="200">Mobile</th>
                        <td><?=($reservation[0]->mobile)?></td>
                        <th width="200">Vehicle No</th>
                        <td><?=($reservation[0]->vehicle_no)?></td>
                        <th width="200">Company or Organization</th>
                        <td><?=($reservation[0]->company_organization)?></td>
                    </tr>
                    <tr>
                        <th width="200">Coming from</th>
                        <td><?=($reservation[0]->coming_from)?></td>
                        <th width="200">Purpose of visit</th>
                        <td><?=($reservation[0]->purpose_of_visit)?></td>
                        <th width="200">Mode of Payment</th>
                        <td><?=($reservation[0]->mode_of_payment)?></td>
                    </tr>
                    <tr>
                        <th width="200">Trx ID</th>
                        <td><?=($reservation[0]->trx_id)?></td>
                    </tr>
                </table>
                <?php } ?>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>