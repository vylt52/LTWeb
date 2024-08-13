<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>FilmViet - Đổi Mật Khẩu</title>
<%@ include file="/views/common/head.jsp"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
	<%@ include file="/views/common/header.jsp"%>

	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg"
		data-setbg="views/template/user/img/normal-breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>Trang Cá Nhân</h2>
						<p>Chào Mừng Bạn Đến Blog Chính Thức Của FilmViet.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Login Section Begin -->
	<section class="login spad container">
		<div class="row bg-white rounded-4 p-5 m-1"
			style="box-shadow: 4px 4px 4px rgba(190, 190, 190, 0.5); border-radius: 6px;">

			<div class="col-12 col-md-3 col-lg-3">

				<div class="img-profile">

					<img src="views/template/user/img/profile-logo.png"
						class="img-fluid">

				</div>

				<div class="link-profile">

					<h6 class="text-secondary text-center mb-2">${fullname}</h6>
					<h6 class="text-secondary text-center mb-2">${email}</h6>
					<h6 class="text-secondary text-center">
						<img src="views/template/user/img/vn.png" class="img-fluid"
							width="20px"> Việt Nam
					</h6>

				</div>

			</div>

			<div class="col-12 col-md-9 col-lg-9">

				<div class="profile-name">

					<div class="row">

						<div class="col-6 col-md-8 col-lg-9">

							<span> <a href="editprofile"
								class="text-info fs-6 text-decoration-none font-weight-bold">
									<i class="bi bi-chevron-left text-dard"></i> Quay về
							</a>
							</span>

						</div>

						<div class="col-6 col-md-4 col-lg-3">

							<span class="text-secondary fs-6 font-weight-bold">Đổi mật
								khẩu</span>

						</div>

					</div>

					<hr class="text-dark">

				</div>

				<div class="info mt-5">

					<h4 class="text-dark mb-4 font-weight-bold">Đổi mật khẩu</h4>

					<div class="row">

						<div class="col-12 col-md-12 col-lg-12">

							<form id="form" autocomplete="off"
								onsubmit="return validateChangePass()" action="changepass"
								method="post">


								<fieldset disabled>
									<div class="mb-4">
										<input type="text" class="form-control disable"
											value="${email}" placeholder="username">
									</div>
								</fieldset>

								<div class="mb-4">
									<input type="password" class="form-control" name="oldPass"
										placeholder="Mật khẩu cũ">
								</div>

								<div class="mb-4">
									<input type="password" class="form-control" name="newPass"
										placeholder="Mật khẩu mới">
								</div>

								<div class="mb-4">
									<input type="password" class="form-control" name="cofirmPass"
										placeholder="Nhập lại mật khẩu">
								</div>

								<input type="hidden" name="confirmation" id="confirmationField"
									value="false" /> <input type="hidden" name="password"
									value="${password}" />

								<button type="submit" class="btn btn-outline-success">Lưu
									thông tin</button>

							</form>

						</div>

					</div>

				</div>

			</div>

		</div>

	</section>
	<!-- Forgotpass Section End -->

	<%@ include file="/views/common/footer.jsp"%>

</body>

</html>