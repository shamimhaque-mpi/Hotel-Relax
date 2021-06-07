
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading panal-header">
                <div class="panal-header-title pull-left">
                    <h1>Show Message</h1>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <label class="">Name:</label>
                    <table>
                        <tr>
                            <th></th>
                            <th><h3>Email: </h3></th>
                            <!--<th><h3>Subject: </h3></th><br>-->
                            <th><h3>Message: </h3></th>
                        </tr>
                        <tr>
                            <td></td>
                            <td><h4><?= $message[0]->email ?></h4></td>
                            <!--<td><h4><?= $message[0]->subject ?></h4></td>-->
                            <td><p><?= $message[0]->message ?></p></td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <div class="panel-footer">&nbsp;</div>
        </div>
    </div>