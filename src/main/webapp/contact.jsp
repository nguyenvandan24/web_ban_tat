<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

  <!-- title -->
  <title>Contact</title>

  <!-- favicon -->
  <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
  <!-- google font -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
  <!-- fontawesome -->
  <link rel="stylesheet" href="assets/css/all.min.css">
  <!-- bootstrap -->
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <!-- owl carousel -->
  <link rel="stylesheet" href="assets/css/owl.carousel.css">
  <!-- magnific popup -->
  <link rel="stylesheet" href="assets/css/magnific-popup.css">
  <!-- animate css -->
  <link rel="stylesheet" href="assets/css/animate.css">
  <!-- mean menu css -->
  <link rel="stylesheet" href="assets/css/meanmenu.min.css">
  <!-- main style -->
  <link rel="stylesheet" href="assets/css/main.css">
  <!-- responsive -->
  <link rel="stylesheet" href="assets/css/responsive.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

</head>
<body>

<c:import url="header.jsp"></c:import>

<!-- search area -->
<div class="search-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <span class="close-btn"><i class="fas fa-window-close"></i></span>
        <div class="search-bar">
          <div class="search-bar-tablecell">
            <h3>Search For:</h3>
            <input type="text" placeholder="Keywords">
            <button type="submit">Search <i class="fas fa-search"></i></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end search arewa -->

<!-- breadcrumb-section -->
<div class="breadcrumb-section breadcrumb-bg">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 offset-lg-2 text-center">
        <div class="breadcrumb-text">
          <p>Hỗ Trợ 24/7</p>
          <h1>Liên hệ</h1>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end breadcrumb section -->

<!-- contact form -->
<div class="contact-from-section mt-150 mb-150">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mb-5 mb-lg-0">
        <div class="form-title">
          <h2>Bạn có câu hỏi?</h2>
          <p>Bạn có câu hỏi gì cứ đặt cho shop, chúng tôi rất sẵn lòng giải đáp mọi thắc mắc của bạn. Cảm ơn bạn đã đặt câu hỏi cho chúng tôi.</p>
        </div>
        <div id="form_status"></div>
        <div class="contact-form">
          <form type="POST" id="fruitkha-contact" onSubmit="return valid_datas( this );">
            <p>
              <input type="text" placeholder="Tên" name="name" id="name">
              <input type="email" placeholder="Email" name="email" id="email">
            </p>
            <p>
              <input type="tel" placeholder="Số điện thoại" name="phone" id="phone">
              <input type="text" placeholder="Chủ đề" name="subject" id="subject">
            </p>
            <p><textarea name="message" id="message" cols="30" rows="10" placeholder="Lời nhắn"></textarea></p>
            <input type="hidden" name="token" value="FsWga4&@f6aw" />
            <p><input type="submit" value="Gửi"></p>
          </form>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="contact-form-wrap">
          <div class="contact-form-box">
            <h4><i class="fas fa-map"></i> Địa chỉ</h4>
            <p>Khu phố 6, Linh Trung <br> Thành phố Thủ Đức <br> Thành phố Hồ Chí Minh <br> Việt Nam</p>
          </div>
          <div class="contact-form-box">
            <h4><i class="far fa-clock"></i> Thời gian mở cửa</h4>
            <p>Thứ 2 - Thứ 6: 8h đến 21h <br> Thứ 7 - Chủ nhật: 10h đến 20h </p>
          </div>
          <div class="contact-form-box">
            <h4><i class="fas fa-address-book"></i> Liên hệ</h4>
            <p>SĐT: +84 345 789 923 <br> Email: 20130077@st.hcmuaf.edu.vn</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end contact form -->

<!-- find our location -->
<div class="find-location blue-bg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <p> <i class="fas fa-map-marker-alt"></i> Vị Trí Của Shop</p>
      </div>
    </div>
  </div>
</div>
<!-- end find our location -->

<!-- google map section -->
<div class="embed-responsive embed-responsive-21by9">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2145255159585!2d106.78918677481937!3d10.871281657437395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1697553703866!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="embed-responsive-item"></iframe>
</div>
<!-- end google map section -->


<c:import url="footer.jsp"></c:import>

<!-- jquery -->
<script src="assets/js/jquery-1.11.3.min.js"></script>
<!-- bootstrap -->
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- count down -->
<script src="assets/js/jquery.countdown.js"></script>
<!-- isotope -->
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
<!-- waypoints -->
<script src="assets/js/waypoints.js"></script>
<!-- owl carousel -->
<script src="assets/js/owl.carousel.min.js"></script>
<!-- magnific popup -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!-- mean menu -->
<script src="assets/js/jquery.meanmenu.min.js"></script>
<!-- sticker js -->
<script src="assets/js/sticker.js"></script>
<!-- form validation js -->
<script src="assets/js/form-validate.js"></script>
<!-- main js -->
<script src="assets/js/main.js"></script>

</body>
</html>