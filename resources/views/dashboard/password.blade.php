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

<div class="row justify-content-center">
  <div class="col-md-6 col-lg-6 col-sm-12">


  <legend class="text-center">Change Password</legend>

  <form method="POST" action="{{ url('change-password') }}">
      @csrf


      <div class="form-group row">
          <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

          <div class="col-md-6">
              <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="old_password" required autocomplete="new-password">

          </div>
      </div>



      <div class="form-group row">
          <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('New Password') }}</label>

          <div class="col-md-6">
              <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

          </div>
      </div>


      <div class="form-group row">
          <label for="confirm_password" class="col-md-4 col-form-label text-md-right">{{ __('confirm Password') }}</label>

          <div class="col-md-6">
              <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password_confirmation" required autocomplete="new-password">

          </div>
      </div>









      <div class="form-group row mb-0">
          <div class="col-md-6 offset-md-4">
              <button type="submit" class="btn btn-primary">
                  {{ __('Reset Password') }}
              </button>
          </div>
      </div>
  </form>
</div><!-- end of Password change area --->
</div>

@endsection