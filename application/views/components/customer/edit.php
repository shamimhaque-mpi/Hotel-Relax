<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Edit Customer</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php
                    msg();
                    if($customer==false){
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
                
                <?php $id = isset($customer[0]->id) ? $customer[0]->id : ''; ?>
                <form action="<?php echo get_url("customer/customer/edit_process/{$customer[0]->id}"); ?>" method="post" enctype="multipart/form-data">
                    <div class="row">
                        
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label">National ID/Passport/DL <span class="req">*</span></label>
                                <input type="text" name="nid" value="<?php echo $customer[0]->nid; ?>" class="form-control" required>
                            </div>
                        </div>
                        
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Room No <span class="req">*</span></label>
                                <select class="form-control" name="room_no">
                                    <?php if(!empty($room_type)){ foreach($room_type as $key => $row){ ?>
                                    <option value="<?php echo $row->room_type; ?>" <?php if($row->room_type==$customer[0]->room_no){echo "selected";} ?>> <?php echo $row->name; ?> </option>
                                    <?php }} ?>
                                    
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Name <span class="req">*</span></label>
                                <input type="text" name="name" value="<?php echo $customer[0]->name; ?>" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Check in Date <span class="req">*</span></label>
                                <div class="input-group date" id="datetimepicker1">
                                    <input type="text" name="date_in"value="<?php echo $customer[0]->date_in; ?>" class="form-control" style="height: 33px;" placeholder="<?= date('Y-m-d'); ?>" required>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Check out Date <span class="req">*</span></label>
                                <div class="input-group date" id="datetimepicker2">
                                    <input type="text" name="date_out" value="<?php echo $customer[0]->date_out; ?>" class="form-control" style="height: 33px;" placeholder="<?= date('Y-m-d'); ?>" required>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Gender <span class="req">*</span></label>
                                <select class="form-control" name="gender">
                                    <option  disbaled> -- Select a Gender -- </option>
                                    <option value="female" <?php if($customer[0]->gender == "female"){echo "selected";} ?> > Female </option>
                                    <option value="male" <?php  if($customer[0]->gender == "male"){echo "selected";} ?> > Male </option>
                                    <option value="others" <?php  if($customer[0]->gender == "others"){echo "selected";} ?> > Others </option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Age <span class="req">*</span></label>
                                <input type="text" name="age" value="<?php echo $customer[0]->age; ?>" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Father/Husband Name </label>
                                <input type="text" name="spouse" value="<?php echo $customer[0]->spouse; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Nationality <span class="req">*</span></label>
                                <input type="text" name="nationality" value="<?php echo $customer[0]->nationality; ?>" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Profession </label>
                                <input type="text" name="profession" value="<?php echo $customer[0]->profession; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">E-mail </label>
                                <input type="email" name="email" value="<?php echo $customer[0]->email; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Mobile No <span class="req">*</span></label>
                                <input type="text" name="mobile" value="<?php echo $customer[0]->mobile; ?>" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Phone </label>
                                <input type="text" name="phone" value="<?php echo $customer[0]->phone; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Additional Person </label>
                                <input type="text" name="extra_man" value="<?php echo $customer[0]->extra_man; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label"> Vehicle No </label>
                                <input type="text" name="car_no" value="<?php echo $customer[0]->car_no; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Company or Organization </label>
                                <input type="text" name="company" value="<?php echo $customer[0]->company; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label"> Coming From </label>
                                <input type="text" name="coming_from" value="<?php echo $customer[0]->coming_from; ?>" class="form-control" >
                            </div>
                        </div>
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Purpose Of Visit <span class="req">*</span></label>
                                <div class="form-control">
                                    <label>
                                        <input type="radio" name="purpose_of_visit"  <?php if($customer[0]->purpose_of_visit == "tourist"){echo "checked";} ?>  value="tourist" required>&nbsp;
                                        <span>Tourist</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit"  <?php if($customer[0]->purpose_of_visit == "business"){echo "checked";} ?>  value="business" required>&nbsp;
                                        <span>Business</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit"  <?php if($customer[0]->purpose_of_visit == "official"){echo "checked";} ?>  value="official" required>&nbsp;
                                        <span>Official</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit"  <?php if($customer[0]->purpose_of_visit == "others"){echo "checked";} ?>  value="others" required>&nbsp;
                                        <span>Others</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Mode of Advance Payment <span class="req">*</span></label>
                                <div class="form-control">
                                    <label>
                                        <input class="trx_mode" type="radio" name="mode_of_payment" <?php if($customer[0]->mode_of_payment == "bkash"){echo "checked";} ?>  value="bkash" required>&nbsp;
                                        <span>Bkash</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input class="trx_mode" type="radio" name="mode_of_payment" <?php if($customer[0]->mode_of_payment == "rocket"){echo "checked";} ?>  value="rocket" required>&nbsp;
                                        <span>Rocket</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input class="trx_mode" type="radio" name="mode_of_payment" <?php if($customer[0]->mode_of_payment == "nogad"){echo "checked";} ?>  value="nogad" required>&nbsp;
                                        <span>Nagad</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12" id="trx_id" hidden>
                            <div class="form-group">
                                <label>Trx ID</label>
                                <input class="form-control" name="trx_id" value="<?php echo $customer[0]->trx_id; ?>" required>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label">Home Address</label>
                                <textarea  name="address" rows="5"  placeholder="Enter Description..." class="form-control" id="tinyTextarea"><?php echo $customer[0]->address; ?></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
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
       $('#datetimepicker1').datetimepicker({
            format: 'YYYY-MM-DD',
            useCurrent: false
        });
        
        $('#datetimepicker2').datetimepicker({
            format: 'YYYY-MM-DD',
            useCurrent: false
        });
        
        $(".trx_mode").click(function(){
            $("#trx_id").show();
        })
    </script>
</div>