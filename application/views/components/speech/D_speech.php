<div class="panel panel-default">
    <div class="panel-heading panal-header">
        <div class="panal-header-title pull-left">
            <h1>Director Speech</h1>
        </div>
    </div>
    <div class="panel-body">
        <?php msg(); ?>
        <br>
        <form class="form-horizontal" action="<?php echo site_url('speech/D_speech/add_process'); ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col-md-3">
                    <label class="control-label pull-right">Speech</label>
                </div>
                <div class="col-md-7">
                    <textarea class="form-control" name="speech" rows="15" id='mytextarea'></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3">
                    <label class="control-label pull-right">Image</label>
                </div>
                <div class="col-md-5">
                    <input type="file" class="file form-control" name="d_img">
                </div>
            </div>
            <input type="hidden" value="d_speech" name="speech_type">
            <div class="form-group">
                <div class="col-md-3">&nbsp;</div>
                <div class="col-md-5">
                    <input type="submit" name="submit" Value="Save" class="btn btn-primary pull-right">
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">&nbsp;</div>
    <script>
      tinymce.init({
        selector: '#mytextarea'
      });
    </script>
</div>