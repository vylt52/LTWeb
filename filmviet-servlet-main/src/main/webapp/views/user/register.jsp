<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/views/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FilmViet - Đăng Ký</title>
    <%@ include file="/views/common/head.jsp" %>
</head>

<body>
<%@ include file="/views/common/header.jsp" %>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
         data-setbg="views/template/user/img/normal-breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>Đăng kí</h2>
                    <p>Chào Mừng Bạn Đến Blog Chính Thức Của FilmViet.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Signup Section Begin -->
<section class="signup spad">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-12 col-lg-6">
                <div class="login__form">
                    <h3>Đăng ký</h3>
                    <form id="register-form-submit" onsubmit="return validateRegisterForm()" action="register"
                          method="POST">
                        <div class="input__item">
                            <input type="text" name="email" placeholder="Địa chỉ Email">
                            <span class="icon_mail"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="fullname" placeholder="Họ và tên">
                            <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="phone" placeholder="Số điện thoại">
                            <span class="icon_phone"></span>
                        </div>
                        <div class="input__item">
                            <input type="password" name="pass" placeholder="Mật khẩu">
                            <span class="icon_lock"></span>
                        </div>
                        <div class="input__item">
                            <input type="password" name="pass-cofirm"
                                   placeholder="Nhập lại mật khẩu"> <span
                                class="icon_lock"></span>
                        </div>
                        <button type="submit" id="submitRegister" class="site-btn">Xác
                            nhận
                        </button>
                    </form>
                    <h5>
                        Bạn có chắn chắc tạo tài khoản ? <a href="login">Đăng nhập !</a>
                    </h5>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-6">
                <div class="login__social__links">
                    <h3>Đăng nhập với:</h3>
                    <ul>
                        <li><a href="#" class="facebook"><i
                                class="fa fa-facebook"></i> Đăng nhập với Facebook</a></li>
                        <li><a
                                href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/BackEnd/login&response_type=code
    &client_id=794386492125-ihgk5oo0mg850vefp61rctp97m3pede9.apps.googleusercontent.com&approval_prompt=force"
                                class="google"><i class="fa fa-google"></i> Đăng nhập với
                            Google</a></li>
                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i>
                            Đăng nhập với Twitter</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Signup Section End -->

<%@ include file="/views/common/footer.jsp" %>

<%
    if (session.getAttribute("existPhone") != null && (boolean) session.getAttribute("existPhone")) {
%>
<script>
    showCenterAlert('error', 'Thất bại !',
        'Số điện thoại đã tồn tại trong cơ sở dữ liệu !');
</script>
<%
    }

    if (session.getAttribute("existEmail") != null && (boolean) session.getAttribute("existEmail")) {
%>
<script>
    showCenterAlert('error', 'Thất bại !',
        'Địa chỉ Email đã tồn tại trong cơ sở dữ liệu !');
</script>
<%
    }
    session.removeAttribute("existPhone");
    session.removeAttribute("existEmail");
%>

</body>

</html>