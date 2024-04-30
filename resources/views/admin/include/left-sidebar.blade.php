<div id="layoutSidenav_nav" style="width: 250px;">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">

                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="{{ route('home') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>


                {{--                History --}}
                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 2)
                            <div class="sb-sidenav-menu-heading">History</div>
                            <a class="nav-link" href="{{ route('showhistory') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Appointment History
                            </a>
                        @endif
                    @endauth
                @endif


                {{--                User --}}
                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 1)
                            <div class="sb-sidenav-menu-heading">Users</div>
                            <a class="nav-link" href="{{ route('users.create') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>Add User
                            </a>
                            <a class="nav-link" href="{{ route('users.index') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-users"></i></div>Manage Users
                            </a>




                            <div class="sb-sidenav-menu-heading">Doctors</div>
                            <a class="nav-link" href="{{ route('doctor.create') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-user-doctor"></i></div>Add Doctor
                            </a>
                            <a class="nav-link" href="{{ route('doctor.index') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-notes-medical"></i></div>Manage Doctors
                            </a>
                            {{-- <div class="sb-sidenav-menu-heading">Users</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#users"
                                aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-user-doctor"></i></div>
                                Users
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="users" aria-labelledby="headingOne">
                                <nav class="sb-sidenav-menu-nested nav">

                                </nav>
                            </div> --}}
                            {{--                Doctors --}}


                            {{-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#user"
                                aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-user-doctor"></i></div>
                                Doctors
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="user" aria-labelledby="headingOne">
                                <nav class="sb-sidenav-menu-nested nav">

                                </nav>
                            </div> --}}
                        @endif
                    @endauth
                @endif




                {{--                Appointment --}}
                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 4 || Auth::user()->usertype == 1)
                            <div class="sb-sidenav-menu-heading">Manages</div>
                            <a class="nav-link" href="{{ route('showappointment') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-calendar-check"></i></div>Manage
                                Appointments
                            </a>
                            <a class="nav-link" href="{{ route('contact.index') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-question"></i></div>View Query
                            </a>
                        @endif
                    @endauth
                @endif


                {{--                Food --}}
                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 3 || Auth::user()->usertype == 1)
                            <div class="sb-sidenav-menu-heading">Diet</div>
                            <a class="nav-link" href="{{ route('food.create') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-utensils"></i></div>Add Diet
                            </a>
                            <a class="nav-link" href="{{ route('food.index') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-utensils"></i></div>Manage Diet
                            </a>
                            {{-- <div class="sb-sidenav-menu-heading">Food</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#food">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-utensils"></i></div>
                                Food
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="food">
                                <nav class="sb-sidenav-menu-nested nav">

                                </nav>
                            </div> --}}

                            {{--                Order --}}

                            <a class="nav-link" href="{{ route('manage.order') }}">
                                <div class="sb-nav-link-icon"><i class="fa-regular fa-folder"></i></div>Manage Order
                            </a>
                            {{-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#order">
                                <div class="sb-nav-link-icon"><i class="fa-regular fa-folder"></i></div>
                                Order
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="order">
                                <nav class="sb-sidenav-menu-nested nav">

                                    {{--                        <a class="nav-link" href="{{route('food.index')}}">Manage Food</a>
                                </nav>
                            </div> --}}
                        @endif
                    @endauth
                @endif


                {{--                Blog --}}
                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 1)
                            <div class="sb-sidenav-menu-heading">Blog</div>
                            <a class="nav-link" href="{{ route('category.create') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>Add Category
                            </a>
                            <a class="nav-link" href="{{ route('blog.create') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-rss"></i></div>Add Blog
                            </a>
                            <a class="nav-link" href="{{ route('blog.index') }}">
                                <div class="sb-nav-link-icon"><i class="fa-solid fa-blog"></i></div>Manage Blog
                            </a>
                        @endif
                    @endauth
                @endif


                {{--                Pharmachy & Lab Test --}}

                @if (Route::has('login'))
                    @auth
                        @if (Auth::user()->usertype == 5 || Auth::user()->usertype == 1)
                            <div class="sb-sidenav-menu-heading">Pharmachy</div>
                            <a class="nav-link" href="{{ route('pharmachy.create') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Add Medicines
                            </a>

                            <a class="nav-link" href="{{ route('pharmachy.index') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Manage Medicines
                            </a>

                            <a class="nav-link" href="{{ route('medi-order') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Manage Order
                            </a>


                            <div class="sb-sidenav-menu-heading">Laberatory Tests</div>
                            <a class="nav-link" href="{{ route('lab.create') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Add Test
                            </a>

                            <a class="nav-link" href="{{ route('lab.index') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Manage Test
                            </a>

                            <a class="nav-link" href="{{ route('lab-order') }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Manage Order
                            </a>
                        @endif
                    @endauth
                @endif







            </div>
        </div>

        {{-- <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            <x-app-layout></x-app-layout>
        </div> --}}

    </nav>
</div>
