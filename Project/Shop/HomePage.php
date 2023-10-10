<!DOCTYPE html>
<html lang="en">
    <head>
       <?php
        session_start();
       ?>
        <meta charset="utf-8">
        <title>ROSAÉ PARIS</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="../Assets/Template/Main/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="../Assets/Template/Main/lib/animate/animate.min.css" rel="stylesheet">
        <link href="../Assets/Template/Main/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="../Assets/Template/Main/lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="../Assets/Template/Main/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="../Assets/Template/Main/css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-light navbar-light">
            <div class="container-fluid">
                <a href="HomePage.php" class="navbar-brand" style="color:black">ROSAÉ<span style="color:grey"> PARIS</span></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto">
                        <a href="HomePage.php" class="nav-item nav-link active">Home</a>
                        <a href="Product.php" class="nav-item nav-link ">Product</a>
                         <a href="OrderDetails.php" class="nav-item nav-link ">Order Details</a>
                         <a href="ViewRequest.php" class="nav-item nav-link ">Request</a>                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Profile</a>
                            <div class="dropdown-menu">
                                <a href="Myprofile.php" class="dropdown-item">Profile</a>
                                <a href="EditProfile.php" class="dropdown-item">Edit Profile</a>
                                <a href="ChangePassword.php" class="dropdown-item">Change Password</a>
                                
                            </div>
                        </div>
                        <a href="../Guest/Login.php" class="nav-item nav-link">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Carousel Start -->
        <div class="carousel">
            <div class="container-fluid">
                <div class="owl-carousel">
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="../Assets/Template/Main/img/spice1.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                            <h1>Welcome <span><?php echo $_SESSION["kname"];?></span> </h1>
                            <p>
                            ROSAÉ PARIS is one of the world’s leading luxury brands.
                            </p>
                          
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="../Assets/Template/Main/img/spice2.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                        <h1>Welcome <span><?php echo $_SESSION["kname"];?></span> </h1>
                            <p>
                            The customer is at the heart of our unique business model, which includes design, production, distribution and sales through our extensive retail network.
                            </p>
                        
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="../Assets/Template/Main/img/spice3.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                        <h1>Welcome <span><?php echo $_SESSION["kname"];?></span> </h1>
                            <p>
                            Following the House's centenary,ROSAÉ PARIS forges ahead continuing to redefine luxury while celebrating creativity,France craftmanship,and innovation.
                            </p>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->
        
        


        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="footer-contact">
                                    <h2>Our Address</h2>
                                    <p><i class="fa fa-map-marker-alt"></i>123 Street, Paris, France</p>
                                    <p><i class="fa fa-phone-alt"></i>+33 9885664652</p>
                                    <p><i class="fa fa-envelope"></i>boutique@rosaeparis.com</p>
                                    <div class="footer-social">
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href=""><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-youtube"></i></a>
                                        <a href=""><i class="fab fa-instagram"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="footer-link">
                                    <h2>Quick Links</h2>
                                    <a href="">Terms of use</a>
                                    <a href="">Privacy policy</a>
                                    <a href="">Cookies</a>
                                    <a href="">Help</a>
                                    <a href="">FAQs</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="footer-newsletter">
                            <h2>Newsletter</h2>
                            <p>
                            ROSAÉ PARIS newsletter to get all the latest fashion news, inspiration and style tips, as well as access to exclusive offers.
                            </p>
                            <div class="form">
                                <input class="form-control" placeholder="Email goes here">
                                <button class="btn custom-btn">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <p>Copyright &copy; <a href="#">ROSAÉ PARIS</a>, All Right Reserved.</p>
                    <p>Designed By <a href="https://htmlcodex.com">Claire Rouen</a></p>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="../Assets/Template/Main/lib/easing/easing.min.js"></script>
        <script src="../Assets/Template/Main/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="../Assets/Template/Main/lib/tempusdominus/js/moment.min.js"></script>
        <script src="../Assets/Template/Main/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="../Assets/Template/Main/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="../Assets/Template/Main/mail/jqBootstrapValidation.min.js"></script>
        <script src="../Assets/Template/Main/mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="../Assets/Template/Main/js/main.js"></script>
    </body>
</html>
