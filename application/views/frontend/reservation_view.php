<section class="u-PaddingTop50 u-sm-PaddingTop50" id="speech">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton" data-title="Silver Castle">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Registration Card</h1>
    </div>
    <div class="container">
        <div class="row u-PaddingBottom50">
            <?=msg()?>
            <div class="col-md-12">
                <?php if($reservation){ ?>
                <table class="table table-bordered">
                    <tr>
                        <th width="100">Room</th>
                        <?php $room = read('products', ['id'=>$reservation[0]->room_no]); ?>
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
                        <th width="200">Check In Date</th>
                        <td><?=($reservation[0]->check_in_date)?></td>
                        <th width="200">Check Out Date</th>
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
                        <th width="200">Company Or Organization</th>
                        <td><?=($reservation[0]->company_organization)?></td>
                    </tr>
                    <tr>
                        <th width="200">Coming From</th>
                        <td><?=($reservation[0]->coming_from)?></td>
                        <th width="200">Purpose Of Visit</th>
                        <td><?=($reservation[0]->purpose_of_visit)?></td>
                        <th width="200">Mode Of Payment</th>
                        <td><?=($reservation[0]->mode_of_payment)?></td>
                    </tr>
                    <tr>
                        <th width="200">Trx ID</th>
                        <td><?=($reservation[0]->trx_id)?></td>
                    </tr>
                </table>
                <?php } ?>
            </div>
        </div>
    </div>
</section>