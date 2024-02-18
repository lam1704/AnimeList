
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="model.Anime" %>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Anime Template">
        <meta name="keywords" content="Anime, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Anime List</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/plyr.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>  
        <!-- Header Section Begin -->
        <!-- HomePage and NAV Bar -->
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="header__logo">
                            <a href="./home">
                                <img src="img/logo.png" class="rounded-pill" alt="logo" width="150px">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="header__nav">
                            <nav class="header__menu mobile-menu">
                                <ul>
                                    <li class="active"><a href="./home">Homepage</a></li>
                                    <li>
                                        <a href="">Categories <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            <!-- Loop through the categories -->
                                            <c:forEach items="${listG}" var="o" varStatus="loop">
                                                <!-- Start a new row every four items -->
                                                <c:if test="${loop.index % 4 == 0}">
                                                    <div class="row">
                                                    </c:if>
                                                    <li><a href="categories?cID=${o.genreId}">${o.genreName}</a></li>
                                                    <!-- End the row every four items or at the end of the list -->
                                                    <c:if test="${loop.index % 4 == 3 or loop.last}">
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="./blog.html">Our Blog</a></li>
                                    <li><a href="#">Contacts</a></li>
                                </ul>

                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="header__right">
                            <a href="#" class="search-switch"><span class="icon_search"></span></a>
                            <a href="./login.html"><span class="icon_profile"></span></a>
                        </div>
                    </div>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </header>
        <!-- Header End -->



        <!-- Anime List Section Begin -->
        <section class="product spad">
            <div class="container">

                <div class="row">

                    <!-- left side of the page -->

                    <div class="col-lg-8">

                        <!-- Trending Anime -->

                        <div class="trending__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Trending Now</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach items="${listA}" var = "o">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic">
                                                <a href="">
                                                <img src="${o.img}" alt="Image">
                                                </a>
                                                <div class="ep">Ep: ${o.episode}</div>
                                                <div class="view"><i class="fa fa-eye"></i> ${o.member}</div>
                                            </div>
                                            <div class="product__item__text">
                                                <h5><a href="#">${o.title}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                        <!-- Underrated Animes -->

                        <div class="popular__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Underrated Animes</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach items="${listU}" var = "o">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic">
                                                <img src="${o.img}" alt="Image">
                                                <div class="ep">Ep: ${o.episode}</div>
                                                <div class="view"><i class="fa fa-eye"></i> ${o.member}</div>
                                            </div>
                                            <div class="product__item__text">
                                                <h5><a href="#">${o.title}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                        <!--Newest Anime-->

                        <div class="recent__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Newest Shows</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach items="${listL}" var = "o">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic">
                                                <img src="${o.img}" alt="The image is error or the anime it not exist">
                                                <div class="ep">Ep: ${o.episode}</div>
                                                <div class="view"><i class="fa fa-eye"></i> ${o.member}</div>
                                            </div>
                                            <div class="product__item__text">
                                                <h5><a href="#">${o.title}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>

                    <!--End Left side begin right side -->


                    <div class="col-lg-4">
                        <div class="product__sidebar">
                            <div class="product__sidebar__view">
                                <div class="section-title">
                                    <h5>Top Views</h5>
                                </div>

                                <c:forEach items="${listV}" var = "o">

                                    <div class="TPost A row" style="margin-bottom: 10px;"> 

                                        <div class="Image Sidebar col-lg-4">
                                            <img style="display: block;position: absolute;width: 55px;height: 70px;height: auto;"src="${o.img}" alt="Error">
                                        </div>
                                        <div class="Title Sidebar col-lg-8">
                                            <h6 style="color: red">${o.title}</h6>
                                            <p class="view" style="color: white"><i class="fa fa-eye"></i> ${o.member}</p>
                                        </div> 
                                    </div>
                                </c:forEach>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="page-up">
                <a class="scrollToTopButtonJS"><span class="arrow_carrot-up"></span></a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="footer__logo scrollToTopButtonJS">
                            
                                <img src="img/logo.png" class="rounded-pill" alt="logo" width="150px" class="scrollToTopButtonJS">
                            
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="footer__nav">
                            <nav class="footer__menu mobile-menu">
                                <ul>
                                    <li class="active"><a href="./home.jsp">Homepage</a></li>
                                    <li>
                                        <a href="">Categories <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            <!-- Loop through the categories -->
                                            <c:forEach items="${listG}" var="o" varStatus="loop">
                                                <!-- Start a new row every four items -->
                                                <c:if test="${loop.index % 4 == 0}">
                                                    <div class="row">
                                                    </c:if>
                                                    <li><a href="./categories.html">${o.genreName}</a></li>
                                                    <!-- End the row every four items or at the end of the list -->
                                                    <c:if test="${loop.index % 4 == 3 or loop.last}">
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    <li><a href="./blog.html">Our Blog</a></li>
                                    <li><a href="#  ">Contacts</a></li>
                                </ul>

                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="footer__right">
                            <a href="#" class="search-switch"><span class="icon_search"></span></a>
                            <a href="./login.html"><span class="icon_profile"></span></a>
                        </div>
                    </div>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>

        </footer>   
        <!-- Footer Section End -->

        <!-- Search model Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>


    </body>

</html>