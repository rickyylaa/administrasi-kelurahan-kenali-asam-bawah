@extends('layouts.app')
@section('title', 'ASAM BAWAH - DASHBOARD')

@section('content')
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Hi, {{ Auth::user()->name }}!</h4>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                        <a href="javascript:void(0)">Dashboard</a>
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="card">
                    <div class="stat-widget-two card-body">
                        <div class="stat-content">
                            <div class="stat-text">Jumlah Layanan</div>
                            <div class="stat-digit">3</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="card">
                    <div class="stat-widget-two card-body">
                        <div class="stat-content">
                            <div class="stat-text">Jumlah NIK Terdaftar</div>
                            <div class="stat-digit">{{ $warga }}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="card">
                    <div class="stat-widget-two card-body">
                        <div class="stat-content">
                            <div class="stat-text">Jumlah Petugas RT</div>
                            <div class="stat-digit">{{$petugas}}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h5></h5>Jumlah Warga Per-RT</h5>
                        <div id="chart-bar-basic"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(function() {
            var options_basic = {
                series: [{
                    data: [<?php echo $dataAsString ?>],
                }, ],
                chart: {
                    fontFamily: '"Nunito Sans", sans-serif',
                    type: "bar",
                    height: 350,
                    toolbar: {
                        show: true,
                    },
                },
                grid: {
                    borderColor: "transparent",
                },
                colors: ["var(--bs-warning)"],
                plotOptions: {
                    bar: {
                        vertical: true,
                    },
                },
                dataLabels: {
                    enabled: true,
                },
                xaxis: {
                    categories: [<?php echo $keysAsString ?>],
                    labels: {
                        style: {
                            colors: [
                                "#a1aab2",
                            ],
                        },
                    },
                },
                yaxis: {
                    labels: {
                        style: {
                            colors: [
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                                "#a1aab2",
                            ],
                        },
                    },
                },
                tooltip: {
                    theme: "dark",
                },
            };

            var chart_bar_basic = new ApexCharts(
                document.querySelector("#chart-bar-basic"),
                options_basic
            );
            chart_bar_basic.render();
        });
    </script>
@endsection
