@extends('template.master')
@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        @if(session('login'))
        <template id="jon">
            <swal-title>
                Yeay 🥳,Kamu berhasil <strong>login</strong>
            </swal-title>
            <swal-icon type="success" color="green"></swal-icon>
            <swal-button type="confirm">
                owkayyy
            </swal-button>
            <swal-param name="allowEscapeKey" value="false" />
            <swal-param
                name="customClass"
                value='{ "popup": "my-popup" }' />
            <swal-function-param
                name="didOpen"
                value="popup => console.log(popup)" />
        </template>
        @endif
        <!-- Breadcrum -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-style1">
                <li class="breadcrumb-item">
                    <a href="index">Admin</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="javascript:void(0);">Dashboard</a>
                </li>
            </ol>
        </nav>
        <!-- /Breadcrumb -->
        <div class="col-lg-12 mb-4 order-0">
            <div class="card">
                <div class="d-flex align-items-end row">
                    <div class="col-sm-7">
                        <div class="card-body">
                            <h5 class="card-title text-primary">Congratulations {{Auth::user()->name}} ! 🎉</h5>
                            <p class="mb-4">
                                You have done <span class="fw-bold">72%</span> more sales today. Check your new badge in
                                your profile.
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-5 text-center text-sm-left">
                        <div class="card-body pb-0 px-0 px-md-4">
                            <img src="assets/img/illustrations/man-with-laptop-light.png" height="140" alt="View Badge User" data-app-dark-img="illustrations/man-with-laptop-dark.png" data-app-light-img="illustrations/man-with-laptop-light.png"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    Swal.fire({
    template: '#jon'
    })
</script>
@endsection
