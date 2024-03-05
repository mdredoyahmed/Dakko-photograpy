@extends('layouts.dashboard.app')
@section('dashboard_content')
    


<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    @if (Auth::user()->role_id != 2)
        <div class="row">
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Earnings (Monthly)</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    @if (Auth::user()->role_id == 1)
                                    @php
                                        echo App\Models\Hire::whereMonth('created_at', '=', date('m'))
                                        ->sum('price')
               
                                    @endphp
                                    @endif 
                                    @if (Auth::user()->role_id == 3)
                                    @php
                                        echo App\Models\Hire::whereMonth('created_at', '=', date('m'))
                                        ->where('user_id', Auth::id())
                                        ->sum('price')
                                    @endphp
   
                                    @endif   
                                    
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    Earnings (Annual)</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    @if (Auth::user()->role_id == 1)
                                    @php
                                       echo App\Models\Hire::sum('price');
                                    @endphp
                                    @endif 
                                    @if (Auth::user()->role_id == 3)
                                    @php
                                       echo App\Models\Hire::where('user_id', Auth::id())->sum('price');
                                    @endphp
   
                                    @endif   
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">All Works
                                </div>
                                <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                            @if (Auth::user()->role_id == 1)
                                            @php
                                               echo App\Models\Hire::count();
                                            @endphp
                                            @endif 
                                            @if (Auth::user()->role_id == 3)
                                            @php
                                               echo App\Models\Hire::where('user_id', Auth::id())->count();
                                            @endphp
           
                                            @endif 
                                        </div>
                                    </div>
                                  
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                    Pending Requests</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    @if (Auth::user()->role_id == 1)
                                    @php
                                        echo App\Models\Hire::where('status',0)        
                                                        ->count();
                                    @endphp
                                    @endif 
                                    @if (Auth::user()->role_id == 3)
                                    @php
                                        echo App\Models\Hire::where('user_id', Auth::id())
                                                        ->where('status',0)        
                                                        ->count();
                                    @endphp
    
                                    @endif 
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    @if (Auth::user()->role_id == 2)
    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-header">
                        <x-notification></x-notification>
                        @if (session('error'))
                            <div class="alert alert-danger">{{ session('error') }}</div>
                        @endif
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Hire Table</h5>

                        <!-- Table with stripped rows -->
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th scope="col">SL</th>
                                    <th scope="col">Hire Name</th>
                                    <th scope="col">Hire Email</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($hires as $item)
                                    <tr>
                                        <th scope="row">{{ $loop->index + 1 }}</th>
                                        <td>{{ Auth::user()->role_id == 2 ? $item->photographer ? $item->photographer->name : "" : $item->user ? $item->user->name : "" }}</td>
                                        <td>{{ Auth::user()->role_id == 2 ? $item->photographer ? $item->photographer->email : "" : $item->user ? $item->user->email : "" }}</td>
                                        <td>{{ $item->title }}</td>
                                        <td>{{ $item->price }}</td>
                                        <td class="form-inline">
                                            @if ($item->status == 0)
                                                <a class="badge bg-danger text-light" href="{{ Auth::user()->role_id == 3 ? url('hire/status', $item->hire_id) :'' }}">NO-Accept</a>
                                            @else 
                                                <a class="badge bg-success text-light" href="">Accept</a>
                                            @endif
                                        </td>
                                    </tr>
                                @empty
                                    <h2 class="bg-danger text-light text-center">Hire Is empty</h2>
                                @endforelse
                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->

                    </div>
                </div>

            </div>
        </div>
    </section>
    @endif
    <!--hire information -->
    
    <!--end of hire information -->




</div>
@endsection