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
  <title>Shop</title>

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
<style>
  .list-tat{
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 100%;
  }

  .panigation-item__link {
    color: #6f6f6f;
    text-decoration: none;
    margin: 0 5px;
  }

  .panigation-item__link.active {
    color: #6f6f6f;
    background: #F28123;
  }
</style>
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
          <h1>Sản Phẩm Của Chúng Tôi</h1>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end breadcrumb section -->

<!-- products -->
<div class="product-section mt-150 mb-150">
  <div class="container">

    <div class="row">
      <div class="col-md-12">
        <div class="product-filters">
          <ul>
            <c:set var="activeClass" value="active" />
            <li class="${empty param.cid ? activeClass : ''}" data-filter="*">
              <a href="/render">Tất cả</a>
            </li>
            <li class="${param.cid == 'TCC' ? activeClass : ''}" data-filter=".strawberry">
              <a href="/CategoryServlet?cid=TCC" class="nav-item nav-link">Tất cổ cao</a>
            </li>
            <li class="${param.cid == 'TCN' ? activeClass : ''}" data-filter=".berry">
              <a href="/CategoryServlet?cid=TCN" class="nav-item nav-link">Tất cổ ngắn</a>
            </li>
            <li class="${param.cid == 'ST' ? activeClass : ''}" data-filter=".lemon">
              <a href="/CategoryServlet?cid=ST" class="nav-item nav-link">Combo hoặc set</a>
            </li>
          </ul>

        </div>
      </div>
    </div>

    <div class="row product-lists">
      <c:forEach items="${listSP}" var="p">
        <div class="col-lg-4 col-md-6 text-center">
          <div class="single-product-item">
            <div class="product-image">
              <a href="<c:url value="/detailP?maSP=${p.pid}"></c:url>"> <img src="${p.image}" alt="">
            <h3 class="list-tat">${p.name}</h3>
            <p class="product-price">${p.price}00 VNĐ </p>
              </a>
            <a href="cart.jsp" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
          </div>
        </div>
        </div>
      </c:forEach>
    </div>

    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="pagination-wrap">
          <ul class="panigation home-product-panigation">
            <li class="panigation-item">
              <c:if test="${index > 1}">
                <a href="<c:url value='render?index=${index - 1}'></c:url>" class="panigation-item__link">
                  <i class="panigation-item__icon fas fa-angle-left"></i>
                </a>
              </c:if>

              <c:if test="${index == 1}">
                <a href="#" class="panigation-item__link">
                  <i class="panigation-item__icon fas fa-angle-left"></i>
                </a>
              </c:if>
            </li>

            <c:forEach begin="1" end="${endPage}" var="o">
              <li class="panigation-item">
                <c:set var="isActive" value="${o eq index}" />
                <a href="<c:url value='render?index=${o}'></c:url>"
                   class="panigation-item__link ${isActive ? 'active' : ''}"
                   id="${o}">
                    ${o}
                </a>
              </li>
            </c:forEach>

            <li class="panigation-item">
              <c:if test="${index < endPage}">
                <a href="<c:url value='render?index=${index + 1}'></c:url>"
                   class="panigation-item__link">
                  <i class="panigation-item__icon fas fa-angle-right"></i>
                </a>
              </c:if>
              <c:if test="${index == endPage}">
                <a href="#"
                   class="panigation-item__link">
                  <i class="panigation-item__icon fas fa-angle-right"></i>
                </a>
              </c:if>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end products -->

<!-- logo carousel -->
<div class="logo-carousel-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="logo-carousel-inner">
          <div class="single-logo-item">
            <img src="assets/img/company-logos/1.png" alt="">
          </div>
          <div class="single-logo-item">
            <img src="assets/img/company-logos/2.png" alt="">
          </div>
          <div class="single-logo-item">
            <img src="assets/img/company-logos/3.png" alt="">
          </div>
          <div class="single-logo-item">
            <img src="assets/img/company-logos/4.png" alt="">
          </div>
          <div class="single-logo-item">
            <img src="assets/img/company-logos/5.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end logo carousel -->

<c:import url="footer.jsp"></c:import>

</script>
</body>
</html>