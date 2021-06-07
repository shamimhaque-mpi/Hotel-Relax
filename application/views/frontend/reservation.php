<style>
    .mb-3{
        margin-bottom: 15px;
    }
    .p-2{
        padding: 10px;
    }
    .required{
        color: red;
    }
</style>

<section class="u-PaddingTop150 u-sm-PaddingTop50" id="speech">
    <div class="Heading Heading--center Heading--shadow Heading--ff-Anton u-Marginbottom50" style="margin-top: 25px" data-title="Silver Castle">
        <h1 class="u-FontSize75 u-xs-FontSize50 u-MarginTop0 u-TextGradiennt u-PaddingTop20 u-xs-PaddingTop5 ff-Playball">Registration Card</h1>
    </div>
    <div class="container">
        <div class="row u-PaddingBottom50 u-PaddingTop50">
            <?=msg()?>
            <div class="col-md-12">
                <form action="" method="post"> 
                  <div class="row">
                    <div class="col-md-12 mb-3">
                        <label>National ID/Passport/DL <span class="required">*</span></label>
                        <input type="text" class="form-control" name="national_id" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Room No <span class="required">*</span></label>
                        <select class="form-control" name="room_no" required>
                            <option value=""> -- Select a Room --</option>
                            <?php foreach($products as $key=>$product){?>
                                <option value="<?=$product->id?>"><?=$product->name?> (<?=$product->room_type?>)</option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Name <span class="required">*</span></label>
                        <input type="text" class="form-control" name="name" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Check in Date <span class="required">*</span></label>
                        <input type="date" class="form-control" name="check_in_date" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Check out Date <span class="required">*</span></label>
                        <input type="date" class="form-control" name="check_out_date" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Gender <span class="required">*</span></label>
                        <select class="form-control" name="gender">
                            <option value=""> -- select a Gender -- </option>
                            <option value="female"> Female </option>
                            <option value="male"> Male </option>
                            <option value="others"> Others </option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Age <span class="required">*</span></label>
                        <input type="text" class="form-control" name="age" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Father/Husband Name</label>
                        <input type="text" class="form-control" name="father_husband_name">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Nationality <span class="required">*</span></label>
                        <input type="text" class="form-control" name="nationality" value="Bangladeshi" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Profession</label>
                        <input type="text" class="form-control" name="profession">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>E-mail</label>
                        <input type="text" class="form-control" name="email">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Mobile No <span class="required">*</span></label>
                        <input type="text" class="form-control" name="mobile" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Phone <span class="required"></span></label>
                        <input type="text" class="form-control" name="phone" >
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Additional Person</label>
                        <input type="text" class="form-control" name="additional_person">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Vehicle No</label>
                        <input type="text" class="form-control" name="vehicle_no">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Company or Organization</label>
                        <input type="text" class="form-control" name="company_organization">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Coming From</label>
                        <input type="text" class="form-control" name="coming_from">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Purpose Of Visit <span class="required">*</span></label>
                        <div class="form-control p-2">
                            <div>
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
                    <div class="col-md-6 mb-3">
                        <label>Mode of Advance Payment <span class="required">*</span></label>
                        <div class="form-control">
                            <div>
                                <!--<label>
                                    <input class="trx_mode" type="radio" name="mode_of_payment" value="cash" required>&nbsp;
                                    <span>Cash</span>
                                </label>
                                &nbsp;
                                <label>
                                    <input class="trx_mode" type="radio" name="mode_of_payment" value="credot_card" required>&nbsp;
                                    <span>Credit Card</span>
                                </label>-->
                                &nbsp;
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
                                &nbsp;
                                <!--<label>
                                    <input class="trx_mode" type="radio" name="mode_of_payment" value="others" required>&nbsp;
                                    <span>Others</span>
                                </label>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3" id="trx_id" hidden>
                        <label>Trx ID</label>
                        <input class="form-control" name="trx_id" placeholder="trx_id" required>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label>Home Address</label>
                        <textarea class="form-control" name="address"></textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <input type="submit" value="Submit" class="pull-right btn btn-success">
                    </div>
                    <div class="col-md-12 mb-3" style="margin-top:60px;">
                        <div class="form-control p-2" style="height: 100px;">
                            <p style="font-weight: bold;">
                                <strong style="text-decoration: underline;color:blue">Terms</strong> : 
                                This properly is private owned and management reserves the right to refuse service to anyone. 
                                Management will not be responsible for accident or injury to guests for loss of money, 
                                Jewelry or other valuables or items of any kind Management will not be responsible for any 
                                item left in the room and also for allowing any unregistered additinal guests in the room.
                            </p>
                        </div>
                    </div>
                  </div>
                </form>
            </div>
        </div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(".trx_mode").click(function(){
        $("#trx_id").show();
    })
    
    
    
</script>