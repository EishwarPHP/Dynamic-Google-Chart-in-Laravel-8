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
        <div class="col-lg-12 mb-12">
                <h2 style="margin:50px 0px 0px 0px;text-align: center;">Laravel 8 Google Pie Chart Testing</h2>
                <div id="piechart" style="width: 900px; height: 500px; margin-left: 235px"></div>
                <script type="text/javascript">
                    var phone_count_18 = <?php echo $phone_count_18; ?>;
                    var phone_count_19 = <?php echo $phone_count_19; ?>;
                    var phone_count_20 = <?php echo $phone_count_20; ?>;

                    var laptop_count_18 = <?php echo $laptop_count_18; ?>;
                    var laptop_count_19 = <?php echo $laptop_count_19; ?>;
                    var laptop_count_20 = <?php echo $laptop_count_20; ?>;

                    var tablet_count_18 = <?php echo $tablet_count_18; ?>;
                    var tablet_count_19 = <?php echo $tablet_count_19; ?>;
                    var tablet_count_20 = <?php echo $tablet_count_20; ?>;

                    google.charts.load('current', {'packages':['corechart']});
                    google.charts.setOnLoadCallback(drawChart);
                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                    ['Year', 'Phone', 'Laptop', 'Tablet'],
                    ['2018',  phone_count_18, laptop_count_18, tablet_count_18],
                    ['2019',  phone_count_19, laptop_count_19, tablet_count_19],
                    ['2020',  phone_count_20, laptop_count_20, tablet_count_20]
                    ]);
                        var options = {                
                            curveType: 'function',
                            legend: { position: 'bottom' }
                        };
                        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                        chart.draw(data, options);
                    }
                </script>
        </div>

    </div>

</div>
@endsection
</body>
</html>