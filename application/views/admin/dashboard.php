<link href="https://fonts.googleapis.com/css?family=Cookie|Josefin+Sans|Satisfy&display=swap" rel="stylesheet">


<!--panel header start here-->
<div class="container-fluid">
    <div class="row">
        <div class="dashboard_header_wrapper">
            <h1 class="title">Deshboard</h1>
            <?php /*<div class="counter_wrapper">
                <h1>have a good day sir !</h1>
                <div class="counter">
                    <?php date_default_timezone_set("Asia/Dhaka"); ?>
					<span class="counter_items" id="man_hour"><?php echo date("h"); ?></span>
					<span class="counter_items" id="man_minute"><?php echo date("i"); ?></span>
					<span class="counter_items" id="man_secounds"><?php echo date("s"); ?></span>
					<span class="counter_items" id="man_am_pm"><?php echo date("a"); ?></span>
				</div>
            </div>*/?>
        </div>
    </div>
</div>
<!--panel header end here-->
<div class="row">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading panal-header">
                        <div class="panal-header-title pull-left">
                            <h1>Browser Statistics</h1>
                        </div>
                    </div>
                    <div class="panel-body">
                        <html>
                          <head>
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <script type="text/javascript">
                              google.charts.load("current", {packages:["corechart"]});
                              google.charts.setOnLoadCallback(drawChart);
                              function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                  ['Task', 'Hours per Day'],
                                  ['Chrome',     20],
                                  ['EDGE/IE',      5],
                                  ['Firefox',  10],
                                  ['Opera', 4],
                                  ['Others',    2]
                                ]);
                        
                                var options = {
                                  title: '',
                                  is3D: true,
                                  legend: 'none',
                                  'height': 500
                                };
                        
                                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                                chart.draw(data, options);
                              }
                            </script>
                          </head>
                          <body>
                            <div id="piechart_3d" style="width: 100%;"></div>
                          </body>
                        </html>
                    </div>
                    <div class="panel-footer">&nbsp;</div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading panal-header">
                        <div class="panal-header-title pull-left">
                            <h1>Device Statistics</h1>
                        </div>
                    </div>
                    <div class="panel-body">
                        <html>
                          <head>
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <script type="text/javascript">
                              google.charts.load("current", {packages:["corechart"]});
                              google.charts.setOnLoadCallback(drawChart);
                              function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                  ['Task', 'Hours per Day'],
                                  ['Computer',     11],
                                  ['Tablet',      1],
                                  ['Mobile',  6],
                                  ['Others', 2]
                                ]);
                        
                                var options = {
                                  title: '',
                                  is3D: true,
                                  legend: 'none',
                                  'height': 500
                                };
                        
                                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d2'));
                                chart.draw(data, options);
                              }
                            </script>
                          </head>
                          <body>
                            <div id="piechart_3d2"></div>
                          </body>
                        </html>
                    </div>
                    <div class="panel-footer">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php /*<div class="container-fluid">
    <div class="row">
   	    <?php msg(); ?>
   	    <div class="dashboard_box_wrapper">
           <div class="dash-box dash-box-1">
              <span>Total Order</span>
              <h1><?php echo $total_order; ?></h1>
           </div>
           
           <div class="dash-box dash-box-2">
              <span>Total Amount</span>
              <h1><?php echo $total_amount; ?> TK</h1>
           </div>
           
           <div class="dash-box dash-box-3">
              <span>Pending Order</span>
              <h1><?php echo $total_pending_order; ?> TK</h1>
           </div>

           <div class="dash-box dash-box-4">
              <span>Processing Order</span>
              <h1><?php echo $total_processing_order; ?> TK</h1>
           </div>


           <div class="dash-box dash-box-5">
              <span>Complete Order</span>
              <h1><?php echo $total_active_order; ?> TK</h1>
           </div>


           <div class="dash-box dash-box-6">
              <span>Cancel Order</span>
              <h1><?php echo $total_cancel_order; ?> TK</h1>
           </div>
        </div>
    </div>
</div> */?>
<!-- /#page-content-wrapper -->






<script>
	var interval_id = setInterval(function(){
		// work with man_secounds start---------------------------
		// check man_secounds > 0
		if(man_secounds.innerHTML>=0 && man_secounds.innerHTML<59){
			let temp_sec = (+man_secounds.innerHTML+1);
			man_secounds.innerHTML = (temp_sec>9) ? temp_sec : "0"+temp_sec;
		}else{
			man_secounds.innerHTML = "00";

			// work with man_minute start---------------------------
			// check man_minute > 0
			if(man_minute.innerHTML>=0 && man_minute.innerHTML<59){
				let temp_man_minute  = (+man_minute.innerHTML+1);
				man_minute.innerHTML = (temp_man_minute>9) ? temp_man_minute : "0"+temp_man_minute;
			}else{
			    man_minute.innerHTML = "00";
			
				// work with man_minute start---------------------------
				if(man_hour.innerHTML>0 && man_hour.innerHTML<12){
					let temp_man_hour = (+man_hour.innerHTML+1);
					man_hour.innerHTML = (temp_man_hour>9) ? temp_man_hour : "0"+temp_man_hour;;
				}else{
					man_hour.innerHTML = "01";
					
					var man_am_pm = document.querySelector("#man_am_pm");
					if(man_am_pm){
					    man_am_pm.innerHTML = (man_am_pm.innerHTML=='am') ? "pm" : "am";
					}
				}
			}
		}
	}, 1000);
</script>