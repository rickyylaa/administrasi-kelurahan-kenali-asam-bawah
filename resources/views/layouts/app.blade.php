
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon.png">

    @yield('css')
    <link href="/css/style.css" rel="stylesheet">

</head>
<body>
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>

    <div id="main-wrapper">
        <div class="nav-header">
            <a href="{{ route('dashboard') }}" class="brand-logo">
                <img class="logo-abbr" src="/images/logo.png" alt="">
                <img class="logo-compact" src="/images/logo-text.png" alt="">
                <img class="brand-title" src="/images/logo-text.png" alt="">
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
        </div>

        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left"></div>
                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown header-profile">
                                <a href="#" class="nav-link" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-account"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="/logout" class="dropdown-item">
                                        <i class="icon-key"></i>
                                        <span class="ml-2">Logout </span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                    <li class="nav-label first">Main Menu</li>
                    <li>
                        <a href="{{ route('dashboard') }}" aria-expanded="false">
                            <i class="icon icon-home-minimal"></i>
                            <span class="nav-text">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-label first">Data</li>
                    @if (auth()->user()->role === 'Lurah' || auth()->user()->role === 'Kasi' || auth()->user()->role === 'Staff')
                        <li>
                            <a href="{{ route('user') }}" aria-expanded="false">
                                <i class="icon icon-single-04"></i>
                                <span class="nav-text">User</span>
                            </a>
                        </li>
                    @endif
                    @if (auth()->user()->role === 'Lurah' || auth()->user()->role === 'Staff' || auth()->user()->role === 'Petugas')
                        <li {{ request()->is('warga*') ? 'class=mm-active' : '' }}>
                            <a href="{{ route('warga') }}" aria-expanded="false">
                                <i class="icon icon-single-04"></i>
                                <span class="nav-text">Warga</span>
                            </a>
                        </li>
                    @endif
                    <li class="nav-label first">Lainnya</li>
                    @if(auth()->user()->role === 'Staff')
                        <li {{ request()->is('cetak*') ? 'class=mm-active' : '' }}>
                            <a href="{{ route('cetakSurat') }}" aria-expanded="false">
                                <i class="icon icon-form"></i>
                                <span class="nav-text">Cetak Surat</span>
                            </a>
                        </li>
                    @endif
                    @if(auth()->user()->role === 'Petugas')
                        <li {{ request()->is('pengajuan*') ? 'class=mm-active' : '' }}>
                            <a href="{{ route('pengajuanSurat') }}" aria-expanded="false">
                                <i class="icon icon-form"></i>
                                <span class="nav-text">Pengajuan Surat</span>
                            </a>
                        </li>
                    @endif
                    @if(auth()->user()->role === 'Lurah')
                        <li {{ request()->is('konfirmasi*') ? 'class=mm-active' : '' }}>
                            <a href="{{ route('konfirmasiSurat') }}" aria-expanded="false">
                                <i class="icon icon-form"></i>
                                <span class="nav-text">Konfirmasi Surat</span>
                            </a>
                        </li>
                    @endif
                    <li>
                        <a href="/logout" aria-expanded="false">
                            <i class="icon icon-lock"></i>
                            <span class="nav-text">Logout</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="content-body">
            @yield('content')
        </div>

        <div class="footer">
            <div class="copyright">
                <p>Copyright © All Right Reserved 2025</p>
            </div>
        </div>
    </div>

    @yield('js')
    <script src="/vendor/global/global.min.js"></script>
    <script src="/vendor/apexcharts/dist/apexcharts.js"></script>
    <script src="/js/quixnav-init.js"></script>
    <script src="/js/custom.min.js"></script>

    @yield('script')
</body>
</html>
