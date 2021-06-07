<style>
    .customer_info {
        flex-wrap: wrap;
        display: flex;
        width: 100%;
    }
    .customer_info li {
        align-items: flex-start;
        margin: 8px 0;
        padding-right: 15px;
        max-width: 50%;
        display: flex;
        min-width: 400px;
        width: 50%;
    }
    .customer_info li strong { 
        display: inline-block;
        min-width: 200px;
    }
    .customer_info li span {margin-left: 5px;}
</style>

<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>View Customer</h1>
                </div>
            </div>
            <div class="panel-body">
                <ul class="customer_info">
                    <li><strong>National </strong> : <span> <?php echo $customer[0]->nid; ?></span></li>
                    <li><strong>Room No </strong> : <span> <?php echo get_name('products', 'name', ['room_type'=>$customer[0]->room_no]); ?> </span></li>
                    <li><strong>Name  </strong> : <span> <?php echo $customer[0]->name; ?> </span></li>
                    <li><strong>Check In Date </strong> : <span> <?php echo $customer[0]->date_in; ?> </span></li>
                    <li><strong>Check Out Date </strong> : <span> <?php echo $customer[0]->date_out; ?> </span></li>
                    <li><strong>Gender  </strong> : <span> <?php echo ucfirst($customer[0]->gender); ?> </span></li>
                    <li><strong>Age  </strong> : <span> <?php echo $customer[0]->age; ?> </span></li>
                    <li><strong>Father/Husband Name </strong> : <span> <?php echo $customer[0]->spouse; ?> </span></li>
                    <li><strong>Nationality  </strong> : <span> <?php echo $customer[0]->nationality; ?> </span></li>
                    <li><strong>Profession </strong> : <span> <?php echo $customer[0]->profession; ?> </span></li>
                    <li><strong>E-mail </strong> : <span> <?php echo $customer[0]->email; ?> </span></li>
                    <li><strong>Mobile No </strong> : <span> <?php echo $customer[0]->mobile; ?> </span></li>
                    <li><strong>Phone </strong> : <span> <?php echo $customer[0]->phone; ?> </span></li>
                    <li><strong>Additional Person </strong> : <span> <?php echo $customer[0]->extra_man; ?> </span></li>
                    <li><strong>Vehicle No </strong> : <span> <?php echo $customer[0]->car_no; ?> </span></li>
                    <li><strong>Company or Organization </strong> : <span> <?php echo $customer[0]->company; ?> </span></li>
                    <li><strong>Coming From </strong> : <span> <?php echo $customer[0]->coming_from; ?> </span></li>
                    <li><strong>Purpose Of Visit </strong> : <span> <?php echo ucfirst($customer[0]->purpose_of_visit); ?> </span></li>
                    <li><strong>Mode of Advance Payment  </strong> : <span> <?php echo ucfirst($customer[0]->mode_of_payment); ?> </span></li>
                    <li><strong>Trx ID </strong> : <span> <?php echo $customer[0]->trx_id; ?> </span></li>
                    <li><strong>Home Address </strong> : <span> <?php echo $customer[0]->address; ?> </span></li>
                </ul>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>