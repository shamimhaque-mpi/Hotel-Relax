<style>
    .__tblw tr th, .__tblw tr td {
        padding: 20px 20px 0px 0;
        vertical-align: text-top;
    }
</style>
<div class="container-fluid">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Cake Details</h1>
                </div>
                <a class="pull-right" style="font-size: 14px; cursor:pointer;" onclick="window.print()"><i class="fa fa-print"></i>&nbsp;print</a>
            </div>
            <div class="panel-body">
                <?php if($cake==false){ ?>
                    <div class="alert alert_warning">
                        <div class="icon"><i class="fa fa-exclamation-triangle"></i></div>
                        <div class="content">
                            <div>
                                <strong>Warning!</strong> <br>
                            </div>
                            <div>No Result Found !</div>
                        </div>
                    </div>
                <? return; } ?>
                
                <table class="__tblw">
                    <tr>
                        <th>Cake Type</th>
                        <th>:</th>
                        <td>
                            <?php
                                $cake_type_id =  ($cake && isset($cake[0]->cake_type_id)) ? $cake[0]->cake_type_id : '';
                                $type = read('categories', ['status'=>1]);
                                echo ($type) ? ucwords( $type[0]->name) : '';
                            ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Cake Name</th>
                        <th>:</th>
                        <td><?php echo ($cake && $cake[0]->name) ? $cake[0]->name : ''; ?></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <th>:</th>
                        <td style="text-align: justify;"><?php echo ($cake && $cake[0]->description) ? $cake[0]->description : ''; ?></td>
                    </tr>
                </table>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>
</div>