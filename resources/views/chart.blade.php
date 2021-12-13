@extends('layouts.master')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
@section('content')
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

   

    <!-- Content Row -->
    <div class="row">

        <!-- Content Column -->
        <div class="col-lg-12 mb-12" align="center">
                
                    <script type="text/javascript">
                      var visitor = <?php echo $visitor; ?>;
                      console.log(visitor);
                      google.charts.load('current', {'packages':['corechart']});
                      google.charts.setOnLoadCallback(drawChart);
                      function drawChart() {
                        var data = google.visualization.arrayToDataTable(visitor);
                        var options = {
                          title: 'Site Visitor Line Chart',
                          curveType: 'function',
                          legend: { position: 'bottom' }
                        };
                        var chart = new google.visualization.LineChart(document.getElementById('linechart'));
                        chart.draw(data, options);
                      }
                    </script>
                  </head>
                  <body>
                    <h1>Laravel Google Line Chart</h1>
                    <div id="linechart" style="width: 900px; height: 500px"></div>
                  </body>
        </div>

    </div>

</div>
@endsection
</body>
</html>
