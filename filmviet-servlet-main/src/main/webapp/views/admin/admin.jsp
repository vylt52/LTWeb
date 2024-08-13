<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FlimViet - Đăng Nhập</title>
<%@ include file="/views/admin/common/head.jsp"%>
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">

		<div
			class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">

			<div class="d-flex align-items-center justify-content-center w-100">

				<div class="row justify-content-center w-100">

					<div class="col-md-8 col-lg-6 col-xxl-3">

						<div class="card mb-0">

							<div class="card-body">

								<a href="admin"
									class="text-nowrap logo-img text-center d-block py-3 w-100">
									<img
									src="<c:url value='/views/admin/assets/images/favicon.png' />"
									width="100">
								</a>

								<p class="text-center">Quản Lý Kho Phim Việt</p>

								<form onsubmit="return validateLogin()" action="admin"
									method="post">

									<div class="mb-3">
										<label class="form-label">Tên đăng nhập</label> <input
											type="text" name="username" class="form-control">
									</div>

									<div class="mb-4">
										<label for="exampleInputPassword1" class="form-label">Mật
											khẩu</label> <input type="password" name="password"
											class="form-control">
									</div>

									<div
										class="d-flex align-items-center justify-content-between mb-4">
										<div class="form-check">
											<input class="form-check-input primary" type="checkbox"
												value="" id="flexCheckChecked"> <label
												class="form-check-label text-dark" for="flexCheckChecked">
												Đăng nhập lần sau ? </label>
										</div>
										<a class="text-primary fw-bold text-decoration-none"
											href="index"> <i class="fa-solid fa-arrow-left"></i> Quay
											về FilmViet
										</a>
									</div>

									<button type="submit"
										class="btn btn-primary w-100 fs-5 mb-4 rounded-4">Đăng
										nhập</button>
								</form>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@ include file="/views/admin/common/footer.jsp"%>

</body>

</html>