<!-- Header-->
<header id="header" class="header">
    <div class="top-left">
        <div class="navbar-header">
            <h1 style="position: absolute; top: 10px; left:67px; z-index: 2; font-size:28px; font-weight: 600;"> Gramatnika</h1>
            <a class="navbar-brand" href="./" style="position: relative; z-index: 1; top: 0px;">
                <img src="{{ url('images/logo1.png') }}" alt="Logo">
            </a>
            <a class="navbar-brand hidden" href="./"><img src="{{ url('images/logo2.png') }}" alt="Logo"></a>
            <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
        </div>
    </div>
    <div class="top-right">
        <div class="header-menu">

            <a class="nav-link pt-3" href="#" aria-haspopup="true" aria-expanded="false" v-pre>
                {{-- {{ Auth::user()->name }} --}}
            </a>

            <div class="user-area dropdown float-right">

                <a class="dropdown-toggle active" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="user-avatar rounded-circle" src="{{ url('images/admin.png') }}" alt="User Avatar">
                </a>

                <!-- Logout UI -->
                <div class="user-menu dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="nav-link" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </div>

        </div>
    </div>
</header>
<!-- /#header -->