@extends('layouts.dashboard.app')
@section('title', 'List Of Service')
@section('css')
    <style>
        .zoom:hover {
            transform: scale(2.5);
        }
    </style>
@endsection

@section('dashboard_content')

    <div class="pagetitle">
        <h1>profile</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item">Profile</li>
                <li class="breadcrumb-item active">Profile</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Profile
                </div>
                <div class="card-body">
                    
                    <p><label for="">Name</label> {{$user->name}}</p>
                    <p><label for="">Email</label> {{$user->email}}</p>
                    <p><label for="">Role</label> {{$user->role_id ? $user->role->name : ""}}</p>
                </div>
            </div>
        </div>
    </div>

    @section('js')
    @endsection

@endsection