@extends('admin.home.home')
@section('title','Chỉnh sửa sản phẩm')

@section('main-content')
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">
	<!-- ============================================================== -->
	<!-- Start Page Content -->
	<!-- ============================================================== -->
	<div class="row">
		<div class="col-md-12">
			<h5 class="card-title"></h5>
			<div class="card">
				<form action="{{route('admin.product_edit',['id' => $pros->id, 'check' => $check])}}" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
					<div class="row">
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
						
						<div class="card-body">
							<div class="col-md-12 col-edit" style="margin-bottom: 20px;">
								<h5 class="card-title" style="margin-top: 10px;">Chỉnh sửa sản phẩm</h5>
								<hr>
							</div>
							<div class="col-md-6 col-edit">
								<div class="form-group">
									<label class="" for="">Tên sản phẩm <span style="color: red;">*</span></label>
									<input type="text" class="form-control" name="name" id="name" value="{{$pros->name}}" required="required">
									@if($errors->has('name'))
									<div class="text-danger">
										{{$errors->first('name')}}
									</div>
									@endif
								</div>

								<input type="hidden" class="form-control" name="slug" id="slug" value="{{$pros->slug}}" required="required">

								<div class="form-group" style="margin-right: -5px;">
									<label class="">Danh mục</label>
									<select name="category_id" class="form-control" required="required">
										{!! $categories_drop_down !!}
									</select>
								</div>
								@if($errors->has('category_id'))
								<div class="text-danger">
									{{$errors->first('category_id')}}
								</div>
								@endif

								<div class="form-group">
									<label class="" for="">Số lượng <span style="color: red;">*</span></label>
									@foreach($pros_detail as $pro_detail)
									<input type="number" class="form-control" name="amount" required="required" value="{{$pro_detail->amount}}">
									@endforeach
									@if($errors->has('amount'))
									<div class="text-danger">
										{{$errors->first('amount')}}
									</div>
									@endif
								</div>
								<div class="form-group">
									<label class="" for="">Giá <span style="color: red;">*</span></label>
									<input type="number" class="form-control" name="price" value="{{$pros->price}}" required="required">
									@if($errors->has('price'))
									<div class="text-danger">
										{{$errors->first('price')}}
									</div>
									@endif
								</div>

								<div class="form-group">
									<label class="" for="">Giá khuyến mại</label>
									<input type="number" class="form-control" name="price_sale" value="{{$pros->price_sale}}" required="required">
									@if($errors->has('price_sale'))
									<div class="text-danger">
										{{$errors->first('price_sale')}}
									</div>
									@endif
								</div>
								<div class="form-group">
									<label class="" for="">Trạng thái</label>
									<select name="status" class="form-control">
										<option value="0" @if(($pros->status) == 0) selected @endif() >Bày bán</option>
										<option value="1" @if(($pros->status) != 0) selected @endif() >Ngưng kinh doanh</option>
									</select>
								</div>
							</div>
							
							<div class="col-md-6 col-edit">
								<div class="form-group" style="margin-right: -5px;">
									<label class="">Thương hiệu </label>
									<select name="brand_id" class="form-control">
										@foreach($brands as $bra)
										<option value="{{$bra->id}}" @if(($pros->brand_id) == $bra->id) selected @endif() >{{$bra->name}}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label class="" for="">Ảnh đại điện <span style="color: red;">*</span></label>
									<br>
									<input name="image_pro" type="file" style="padding: 5px" class="inputFile form-group" onChange="showPreview(this);" />
									@if($errors->has('image'))
									<div class="text-danger">
										{{$errors->first('image')}}
									</div>
									@endif
								</div>

								<div id="news_div_class" style="float: left; margin-bottom: 20px;">
									<div id="targetOuter">
										<div id="targetLayer" class="item-img bg--gradient-50"></div>
										<img style="width: 450px; height: 300px;" src="public/product_upload/{{$pros->image}}" class="icon-choose-image grid-view-img" class="icon-choose-image grid-view-img" >
									</div>

								</div>
							</div>

							<div class="col-md-6 col-edit">
								<div class="form-group">
									<label class="" for="">CPU<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="cpu" value="{{$pro_if->cpu}}" required="required">
									@endforeach
									@if($errors->has('cpu'))
									<div class="text-danger">
										{{$errors->first('cpu')}}
									</div>
									@endif
								</div>

								<div class="form-group">
									<label class="" for="">RAM<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="ram" value="{{$pro_if->ram}}" required="required">
									@endforeach
									@if($errors->has('ram'))
									<div class="text-danger">
										{{$errors->first('ram')}}
									</div>
									@endif
								</div>

								<div class="form-group">
									<label class="" for="">Ổ cứng<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="hard_drive" value="{{$pro_if->hard_drive}}" required="required">
									@endforeach
									@if($errors->has('hard_drive'))
									<div class="text-danger">
										{{$errors->first('hard_drive')}}
									</div>
									@endif
								</div>

								<div class="form-group">
									<label class="" for="">Màn hình<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="screen" value="{{$pro_if->screen}}" required="required">
									@endforeach
									@if($errors->has('screen'))
									<div class="text-danger">
										{{$errors->first('screen')}}
									</div>
									@endif
								</div>

								<div class="form-group">
									<label class="" for="">Card màn hình</label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" value="{{$pro_if->graphic_card}}" name="graphic_card">
									@endforeach
									@if($errors->has('graphic_card'))
									<div class="text-danger">
										{{$errors->first('graphic_card')}}
									</div>
									@endif
								</div>
							</div>

							<div class="col-md-6 col-edit">
								<div class="form-group">
									<label class="" for="">Cổng kết nối<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="connector" value="{{$pro_if->connector}}" required="required">
									@endforeach
									@if($errors->has('connector'))
									<div class="text-danger">
										{{$errors->first('connector')}}
									</div>
									@endif
								</div>
								<div class="form-group">
									<label class="" for="">Hệ điều hành<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="operating_system" value="{{$pro_if->operating_system}}" required="required">
									@endforeach
									@if($errors->has('operating_system'))
									<div class="text-danger">
										{{$errors->first('operating_system')}}
									</div>
									@endif
								</div>
								<div class="form-group">
									<label class="" for="">Thiết kế<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="design" value="{{$pro_if->design}}" required="required">
									@endforeach
									@if($errors->has('design'))
									<div class="text-danger">
										{{$errors->first('design')}}
									</div>
									@endif
								</div>
								<div class="form-group">
									<label class="" for="">Kích cỡ<span style="color: red;">*</span></label>
									@foreach($pros_info as $pro_if)
									<input type="text" class="form-control" name="size" value="{{$pro_if->size}}" required="required">
									@endforeach
									@if($errors->has('size'))
									<div class="text-danger">
										{{$errors->first('size')}}
									</div>
									@endif
								</div>
							</div>

							<div class="clearfix col-md-12 col-edit">
								<div class="form-group" style="margin-top: 10px;">
									<label class="">Nội dung mô tả<span style="color: red;">*</span></label>
									@foreach($pros_detail as $pro_detail)
									<textarea id="editor" cols="30" rows="10" name="content">{{$pro_detail->content}}</textarea>
									@endforeach
									<script type="text/javascript">
										var editor = CKEDITOR.replace('editor',{
											language:'vi',
											filebrowserImageBrowseUrl : "public/ckeditor/ckfinder/ckfinder.html?Type=Images",
											filebrowserFlashBrowseUrl : "public/ckeditor/ckfinder/ckfinder.html?Type=Flash",
											filebrowserImageUploadUrl : "public/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images",
											filebrowserFlashUploadUrl : "public/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash",
										});
									</script>﻿

									@if($errors->has('noidung'))
									<div class="">
										<p id="error_reg">{{$errors->first('noidung')}}</p>
									</div>
									@endif
								</div>
							</div>
							<!-- <input type="hidden" name="_token" value="{{csrf_token()}}"> -->
							@csrf
							<div class="form-group text-right col-md-12 col-edit">
								<button type="submit" class="btn btn-info">SỬA SẢN PHẨM</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<?php 
		function showcateparent($cats_pa, $parent = 0, $char = ''){
			$category_child = [];
			foreach ($cats_pa as $key => $item) {
				if ($item->parent == $parent) {
					$category_child[] = $item;
				}
			}

			if ($category_child) {
				foreach ($category_child as $key => $item) {
					echo '<option value="'.$item->id.'"> '.$char.$item->name.'</option>';

					showcateparent($cats_pa, $item['id'], $char.'&nbsp&nbsp&nbsp');
				}
			}
		}
		?>

		<script type="text/javascript">
			function showPreview(objFileInput) {
				if (objFileInput.files[0]) {
					var fileReader = new FileReader();
					fileReader.onload = function (e) {
		            // $('#blah').attr('src', e.target.result);
		            $("#targetLayer").html('<img src="'+e.target.result+'" alt="Listing" class="img-fluid grid-view-img" style="width: 290px; height: 290px; position: absolute;">');
		            $("#targetLayer").css('opacity','1');
		            $(".icon-choose-image").css('opacity','0');
		            $(".icon-choose-image2").css('margin-top','-62.5px');
		        }
		        fileReader.readAsDataURL(objFileInput.files[0]);
		    }
		}
	</script>
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