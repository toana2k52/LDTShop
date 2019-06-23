@extends('admin.home.home')
@section('title','LDTShop.vn - Trang chủ quản trị')

@section('main-content')
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">
	<!-- ============================================================== -->
	<!-- Start Page Content -->
	<!-- ============================================================== -->
	<div class="row">
		<div class="col-md-12">
			@if(Session::has('success'))
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				{{Session::get('success')}}
			</div>
			@endif
			@if(Session::has('error'))
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				{{Session::get('error')}}
			</div>
			@endif
			<div class="card">
				<div class="">
					<div class="row">
						<div class="col-lg-3 border-right p-r-0">
							<div class="card-body border-bottom">
								<h4 class="card-title m-t-10">Admin: <span>{{Auth::user()->name}}</span></h4>
								<p style="margin-bottom: 5px;">< @if((Auth::user()->position) == 1) Quản trị viên @else Nhân viên @endif></p>
								<li style="margin-left: 15px; color: green; size: 18px; ">online</li>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<h4 class="card-title m-t-10">Đơn hàng:</h4>
											<p><i class="fa fa-angle-right" aria-hidden="true"></i>
												Đơn chờ xác nhận: <span style="color: #04B404;">{{$order_confirm}}</span> đơn</p>
											<p><i class="fa fa-angle-right" aria-hidden="true"></i>
												Đơn đang vận chuyển: <span style="color: #04B404;">{{$order_deliver}}</span> đơn</p>
											<p><i class="fa fa-angle-right" aria-hidden="true"></i>
												Đơn phát thành công: <span style="color: #04B404;">{{$order_success}}</span> đơn</p>	
												<p><i class="fa fa-angle-right" aria-hidden="true"></i>
													Đơn đã hủy: <span style="color: #04B404;">{{$order_cancel}}</span> đơn</p>	
													<p><i class="fa fa-angle-right" aria-hidden="true"></i>
														Tổng: <span style="color: #04B404;">{{$order_all}}</span> đơn</p>	
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-9">
											<div class="card-body b-l calender-sidebar">
												<div id="calendar"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- ============================================================== -->
					<!-- End PAge Content -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Right sidebar -->
					<!-- ============================================================== -->
					<!-- .right-sidebar -->
					<!-- ============================================================== -->
					<!-- End Right sidebar -->
					<!-- ============================================================== -->
				</div>
				<!-- ============================================================== -->
				<!-- End Container fluid  -->
				<!-- ============================================================== -->
				
				@stop()