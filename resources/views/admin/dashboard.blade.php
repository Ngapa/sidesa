@extends('admin.layouts.main')

@section('isi')
    <!--Section: Cards-->
    <section>

        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-lg-12 mb-4 order-0 pt-4">
                <div class="card">
                    <div class="d-flex align-items-end row">
                        <div class="col-sm-7">
                            <div class="card-body">
                                <h5 class="card-title text-primary">Congratulations John! {{ Request()->ip(); }} 🎉</h5>
                                <p class="mb-4">
                                    You have done <span class="fw-bold">72%</span> more sales today. Check your new
                                    badge in
                                    your profile.
                                </p>
                                <a href="javascript:;" class="btn btn-sm btn-blue">View Badges</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->
    </section>
    <!--Section: Cards-->
@endsection
