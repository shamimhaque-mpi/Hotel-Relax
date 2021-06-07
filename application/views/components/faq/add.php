<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Add Faq</h1>
                </div>
            </div>
            <div class="panel-body">
                <?php msg(); ?>
                <form action="<?php echo get_url("faq/faq/add_process"); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Question <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="question" placeholder="Enter Question..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Answer <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="answer" placeholder="Enter Answer..." class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">video Link <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="text" name="link" placeholder="Enter Video extension..." class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">video Photos <span class="req">*</span></label>
                        <div class="col-md-5">
                            <input type="file" name="img" class="form-control" required>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-7">
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


