<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add Customer</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("customer/customer/add_process"); ?>" method="post" enctype="multipart/form-data">
                    <div class="row">
                        
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label">National ID/Passport/DL <span class="req">*</span></label>
                                <input type="text" name="nid" placeholder="Enter nid..." class="form-control" required>
                            </div>
                        </div>
                        
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Room No <span class="req">*</span></label>
                                <select class="form-control" name="room_no">
                                    <option selected disbaled> -- Select a Room -- </option>
                                    <?php if(!empty($room_type)){ foreach($room_type as $key => $row){ ?>
                                    <option value="<?php echo $row->room_type; ?>"> <?php echo $row->name; ?> </option>
                                    <?php }} ?>
                                    
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Name <span class="req">*</span></label>
                                <input type="text" name="name" placeholder="Enter Name..." class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Check in Date <span class="req">*</span></label>
                                <div class="input-group date" id="datetimepicker1">
                                    <input type="text" name="date_in" value="<?= date('Y-m-d'); ?>" class="form-control" style="height: 33px;" placeholder="<?= date('Y-m-d'); ?>" required>
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
                                    <input type="text" name="date_out" value="<?= date('Y-m-d'); ?>" class="form-control" style="height: 33px;" placeholder="<?= date('Y-m-d'); ?>" required>
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
                                    <option selected disbaled> -- Select a Gender -- </option>
                                    <option value="female"> Female </option>
                                    <option value="male"> Male </option>
                                    <option value="others"> Others </option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Age <span class="req">*</span></label>
                                <input type="text" name="age" placeholder="Enter age..." class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Father/Husband Name </label>
                                <input type="text" name="spouse" placeholder="Enter Father/Husband Name..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Nationality <span class="req">*</span></label>
                                <input type="text" name="nationality" value="Bangladeshi" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Profession </label>
                                <input type="text" name="profession" placeholder="Enter Profession..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">E-mail </label>
                                <input type="email" name="email" placeholder="Enter email..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Mobile No <span class="req">*</span></label>
                                <input type="text" name="mobile" placeholder="Enter Mobile No..." class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Phone </label>
                                <input type="text" name="phone" placeholder="Enter phone..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Additional Person </label>
                                <input type="text" name="extra_man" placeholder="Enter Additional Person..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label"> Vehicle No </label>
                                <input type="text" name="car_no" placeholder="Enter Vehicle No..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Company or Organization </label>
                                <input type="text" name="company" placeholder="Enter Company or Organization..." class="form-control" >
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label"> Coming From </label>
                                <input type="text" name="coming_from" placeholder="Enter Coming From..." class="form-control" >
                            </div>
                        </div>
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Purpose Of Visit <span class="req">*</span></label>
                                <div class="form-control">
                                    <label>
                                        <input type="radio" name="purpose_of_visit" value="tourist" required>&nbsp;
                                        <span>Tourist</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit" value="business" required>&nbsp;
                                        <span>Business</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit" value="official" required>&nbsp;
                                        <span>Official</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input type="radio" name="purpose_of_visit" value="others" required>&nbsp;
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
                                        <input class="trx_mode" type="radio" name="mode_of_payment" value="bkash" required>&nbsp;
                                        <span>Bkash</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input class="trx_mode" type="radio" name="mode_of_payment" value="rocket" required>&nbsp;
                                        <span>Rocket</span>
                                    </label>
                                    &nbsp;
                                    <label>
                                        <input class="trx_mode" type="radio" name="mode_of_payment" value="nogad" required>&nbsp;
                                        <span>Nagad</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12" id="trx_id" hidden>
                            <div class="form-group">
                                <label>Trx ID</label>
                                <input class="form-control" name="trx_id" placeholder="trx_id" required>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label">Home Address</label>
                                <textarea  name="address" rows="5"  placeholder="Enter Description..." class="form-control" id="tinyTextarea"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
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
  
</div>



<script type="text/javascript">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
