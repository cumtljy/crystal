 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Omygod | Shopping Mall</title>

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Old+Standard+TT:400,400italic' rel='stylesheet' type='text/css'>


<!-- font awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />


<!-- animate.css -->
<link rel="stylesheet" href="assets/animate.css" />



<!-- Owl Carousel Assets -->
<link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">

<link  href="assets/style.css" rel="stylesheet">

<!-- favicon -->
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">


</head>

<body id="home">






<div class="header">
<nav class="navbar  navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <h1><a class="navbar-brand logo" href="index">Omygod </a></h1>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
      
      <ul class="nav navbar-nav">        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Collections <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="Men">Men</a></li>
            <li><a href="Women">Women</a></li>
            <li><a href="Gifts">Gifts</a></li>            
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="adminLogin">管理员登录</a></li>
            <li><a href="collect.action?username=${sessionScope.user.username }">收藏夹</a></li>
            <li><a href="order.action?username=${sessionScope.user.username }">我的订单</a></li>                     
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-left searchbar" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search for products">
        </div>
      </form>
      <ul class="nav navbar-nav">
        <li><a href="login" data-target="#login"><span class="glyphicon glyphicon-user"></span> Login</a>
        <li><a href="register" data-target="#login"><span class="glyphicon glyphicon-user"></span>  Register</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle cart" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span> Cart <span class="cart-counter">8</span> <span class="caret"></span></a>
          <div class="dropdown-menu mini-cart">

          <div class="clearfix">
          <a href="index" class="btn btn-primary">继续购物</a> <a href="checkout.action?username=${sessionScope.user.username }" class="btn btn-primary">查看购物车</a>
          </div>

          </div>
        </li>
      </ul>
    </div><!-- Wnavbar-collapse -->
  </div><!-- container-fluid -->
</nav>
</div>


<div class="container">

<!-- collections -->
<div class="content inside-page collection">
       
       
       <div class="pull-right sortby">
       <select class="form-control">
					<option>Order by A to Z</option>
					<option>Order by Z to A</option>
					<option>Order by Price</option>
					<option>Order by Rating</option>					
		</select>
       </div>



       <h2 class="title">礼品</h2>

        <div class="breadcrumb"><a href="index">Home</a> / Gifts</div>
<form action="collections" method="post">
       
       <div class="row">
        <c:forEach items="${requestScope.gifts_list }" var="g">
            <div class="col-sm-2 col-xs-6">
                <div class="product">
                            <a href="product.action?id=${g.id }"><img src="images/photos/${g.image}" class="img-responsive"></a>
                            <div class="row title-price">
                                <div class="col-md-8"><h5><a href="product">${g.good_name }</a></h5></div>
                                <div class="col-md-4"><span>${g.price }</span></div>
                            </div>
                            <a href="product.action?id=${g.id}" class="btn btn-default"><i class="fa fa-shopping-cart"></i> 查看详情</a>
                </div>
            </div>
             </c:forEach>  
             
        
        
  </form>       
            
    

       		


                     <div class="text-center">
                     <ul class="pagination">
                     <li class="disabled"><a href="#">«</a></li>
                     <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                     <li><a href="#">»</a></li>
                     </ul>
                     </div>

</div>
<!-- collections -->

</div>
<footer>
   <div class="container">
            <div class="row">
                <div class="col-sm-3 sitemap">
                    <h4>导航地图</h4>
                    <ul class="list-unstyled">
                        <li><a href="index">Home</a></li>
                        <li><a href="collect.action?username=${sessionScope.user.username }">查看收藏</a></li>
                        <li><a href="checkout.action?username=${sessionScope.user.username }">查看购物车</a></li>
                        <li><a href="order.action?username=${sessionScope.user.username }">查看订单</a></li>                       
                    </ul>
                </div>              
                 
                
               
                <div class="col-sm-3 joinus">
                    <h4>联系我们 </h4>
                    <div class="input-group"><input type="text" class="form-control" placeholder="Your Name"></div>
                    <div class="input-group"><input type="text" class="form-control email" placeholder="Your Email Address..."></div>
                    <button class="btn btn-primary"><i class="fa fa-paper-plane"></i> 反馈意见</button>                   
                </div>
                <div class="col-sm-3">
                    <h4>Like and follow us</h4>
                    <span class="social"><a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i> <a href="#"><i class="fa fa-youtube"></i></a> <a href="#"><i class="fa fa-pinterest"></i></a></span>
                </div>

                
            </div>
            <!--/.row--> 
 
    
    <!--/.footer-bottom--> 
</div>
</footer>
<div class="copyright">
    <div class="container">
        
        © Copyright Crystal E-commerce 15-2   
        <a href= class="pull-right">Omygod Shopping Mall</a>

    </div>
</div>
</div>



<script src="assets/jquery.js"></script>



<!-- owlcarousel -->
<script src="assets/owl-carousel/owl.carousel.min.js"></script>

<!-- boostrap -->
<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="assets/mobile/touchSwipe.min.js"></script>
<script src="assets/respond/respond.js"></script>





<!-- custom script -->
<script src="assets/script.js"></script>
</body>
</html>