<nav id="sidebar">
    <!-- Sidebar Content -->
    <div class="sidebar-content">
        <!-- Side Header -->
        <div class="content-header content-header-fullrow px-15">
            <!-- Mini Mode -->
            <div class="content-header-section sidebar-mini-visible-b">
                <!-- Logo -->
                <span class="content-header-item font-w700 font-size-xl float-left animated fadeIn">
                    <span class="text-dual-primary-dark">R</span><span class="text-primary">D</span>
                </span>
                <!-- END Logo -->
            </div>
            <!-- END Mini Mode -->

            <!-- Normal Mode -->
            <div class="content-header-section text-center align-parent sidebar-mini-hidden">
                <!-- Close Sidebar, Visible only on mobile screens -->
                <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                <button type="button" class="btn btn-circle btn-dual-secondary d-lg-none align-v-r" data-toggle="layout"
                    data-action="sidebar_close">
                    <i class="fa fa-times text-danger"></i>
                </button>
                <!-- END Close Sidebar -->

                <!-- Logo -->
                <div class="content-header-item">
                    <a class="link-effect font-w700" href="#">
                        <i class="fa fa-database text-primary"></i>
                        <span class="font-size-xl text-dual-primary-dark">SI Kasir</span> <span class="font-size-xl text-primary">Andhika</span>
                    </a>
                </div>
                <!-- END Logo -->
            </div>
            <!-- END Normal Mode -->
        </div>
        <!-- END Side Header -->

        <!-- Side User -->
        <div class="content-side content-side-full content-side-user px-10 align-parent">
            <!-- Visible only in mini mode -->
            <div class="sidebar-mini-visible-b align-v animated fadeIn">
                <img class="" style="width: 100px;" src="{{ base_url('/img/logo_kasir.png') }}"
                    alt="">
            </div>
            <!-- END Visible only in mini mode -->

            <!-- Visible only in normal mode -->
            <div class="sidebar-mini-hidden-b text-center">
                <a class="img-link" href="#">
                    <img class="img-avatar" style="width: 100px;" src="{{ base_url('/img/logo_kasir.png') }}" alt="">
                </a>
                <ul class="list-inline mt-10">
                    <li class="list-inline-item">
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <a class="link-effect text-dual-primary-dark" data-toggle="layout" data-action="sidebar_style_inverse_toggle"
                            href="javascript:void(0)">
                            <i class="si si-drop"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="link-effect text-dual-primary-dark" href="{{ base_url('Sessions/logout') }}">
                            <i class="si si-logout"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- END Visible only in normal mode -->
        </div>
        <!-- END Side User -->

        <!-- Side Navigation -->
        <div class="content-side content-side-full">
            <ul class="nav-main">
                <li>
                    <a href="{{ base_url('/') }}" class="
                        @if($this->router->fetch_class() == 'dashboard' && $this->router->fetch_method() == 'index')
                            active
                        @endif">
                        <i class="fa fa-home"></i><span class="sidebar-mini-hide">Dashboard</span>
                    </a>
                </li>

                @if($this->session->user_login['role'] == 1)
                <li class="nav-main-heading"><span class="sidebar-mini-visible">UI</span><span class="sidebar-mini-hidden">Admin</span></li>
                <li>
                    <a href="{{ base_url('AdminController/userPetugas') }}" class="
                        @if($this->router->fetch_class() == 'AdminController' && ($this->router->fetch_method() == 'userPetugas' || $this->router->fetch_method() == 'tambahUser' || $this->router->fetch_method() == 'resetPassword'))
                            active
                        @endif">
                        <i class="fa fa-user"></i><span class="sidebar-mini-hide">Manajemen Petugas</span>
                    </a>
                </li>
                <li>
                    <a href="{{ base_url('BarangController/index') }}" class="
                        @if($this->router->fetch_class() == 'BarangController')
                            active
                        @endif">
                        <i class="fa fa-list-alt"></i><span class="sidebar-mini-hide">Manajemen Barang</span>
                    </a>
                </li>
                <li>
                    <a href="{{ base_url('TransaksiController/index') }}" class="
                        @if($this->router->fetch_class() == 'TransaksiController')
                            active
                        @endif">
                        <i class="fa fa-credit-card "></i><span class="sidebar-mini-hide">Manajemen Transaksi</span>
                    </a>
                </li>
                <li>
                    <a href="{{ base_url('LaporanController/index') }}" class="
                        @if($this->router->fetch_class() == 'LaporanController')
                            active
                        @endif">
                        <i class="fa fa-print"></i><span class="sidebar-mini-hide">Laporan</span>
                    </a>
                </li>

                @elseif($this->session->user_login['role'] == 2)
                <li class="nav-main-heading"><span class="sidebar-mini-visible">UI</span><span class="sidebar-mini-hidden">Petugas Kasir</span></li>
                <li>
                    <a href="{{ base_url('TransaksiController/index') }}" class="
                        @if($this->router->fetch_class() == 'TransaksiController')
                            active
                        @endif">
                        <i class="fa fa-credit-card "></i><span class="sidebar-mini-hide">Transaksi</span>
                    </a>
                </li>
                <li>
                    <a href="{{ base_url('BarangController/index') }}" class="
                        @if($this->router->fetch_class() == 'BarangController')
                            active
                        @endif">
                        <i class="fa fa-list-alt"></i><span class="sidebar-mini-hide">Manajemen Barang</span>
                    </a>
                </li>
                @endif
                <!-- <li>
                    <a href="{{ base_url('AdminController/userPetugas') }}" class="
                        @if($this->router->fetch_class() == 'AdminController' && ($this->router->fetch_method() == 'userPetugas'))
                            active
                        @endif">
                        <i class="fa fa-user"></i><span class="sidebar-mini-hide">Data Siswa</span>
                    </a>
                </li> -->
            </ul>
        </div>
        <!-- END Side Navigation -->
    </div>
    <!-- Sidebar Content -->
</nav>
<!-- END Sidebar -->