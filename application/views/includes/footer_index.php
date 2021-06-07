<!-- footer section start -->
        <footer class="footer_section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="company_info">
                            <h3>Company Details</h3>
                            <p>Welcome to Hotel Relax</p><br>
                            <p>Street Name & Number</p>
                            <p>Line Two</p>
                            <p>Phone : <a href="tel:">+880 1937 476716</a></p>
                            <p>Email : <a href="mailto:contact@gmail.com">hello@freelanceitlab.com</a></p>
                            <ul class="social_link">
                                <li><a href="https://www.facebook.com/" target="_blank" class="facebook"><i class="icon ion-logo-facebook"></i></a></li>
                                <li><a href="https://www.youtube.com/" target="_blank" class="youtube"><i class="icon ion-logo-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="company_info">
                            <h3>Important Links</h3>
                            <ul class="quick-link">
                                <li><a href="services.html">Services</a></li>
                                <li><a href="rooms.html">Rooms</a></li>
                                <li><a href="image_gallery.html">Gallery</a></li>
                                <li><a href="news.html">News</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="company_info">
                            <h3 class="pb-1">Rooms Gallery</h3>
                            <div class="gallery_row">
                                <div class="image_box">
                                    <a href="images/gallery/01.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/01.jpg" alt="">
                                    </a>
                                </div>
                                <div class="image_box">
                                    <a href="images/gallery/02.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/02.jpg" alt="">
                                    </a>
                                </div>
                                <div class="image_box">
                                    <a href="images/gallery/03.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/03.jpg" alt="">
                                    </a>
                                </div>
                                <div class="image_box">
                                    <a href="images/gallery/04.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/04.jpg" alt="">
                                    </a>
                                </div>
                                <div class="image_box">
                                    <a href="images/gallery/05.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/05.jpg" alt="">
                                    </a>
                                </div>
                                <div class="image_box">
                                    <a href="images/gallery/01.jpg" data-lightbox="image-3">
                                        <img src="<?php echo site_url('public/frontend').'/'?>images/gallery/01.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="company_info">
                            <h3>Instant Contact</h3>
                            <form class="contact-form" action="#" method="post">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="mobile" placeholder="Mobile" required>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="4" placeholder="Message" required></textarea>
                                </div>
                                <button type="submit" class="btn">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer section end -->


        <!-- second footer start -->
        <footer class="second_footer">
            <div class="container">
                <div class="ft_content">
                    <p><span class="copyright">©</span> 2021 Hotel Relax - All Right Reserved.</p>
                    <p>Developed By <a href="http://www.freelanceitlab.com/" target="_blank">FreelanceITLab</a></p>
                </div>
            </div>
        </footer>
        <!-- second footer end -->


        <!-- jQuery js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- bootstrap js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <!-- owl carousel js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <!-- aos animate js -->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <!-- lightbox js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.min.js"></script>
        <!-- include js -->
        <script src="js/app.js"></script>
        <script>
            /* carousel js */
            $('.carousel').carousel({
                interval: false,
                interval: 5000,
                pause: "false"
            });

            /* aos animate */
            AOS.init({
                duration: 500,
            })

            /* owl carousel */
            $('.testimonial_carousel').owlCarousel({
                autoplayTimeout:5000,
                autoplay:true,
                margin: 20,
                dots:false,
                loop:true,
                nav:false,
                responsive:{
                    991:{items:3},
                    768:{items:2},
                    0:{items:1}
                 }
            });

            /* lightbox */
            lightbox.option({
                'showImageNumberLabel': false,
                'positionFromTop': 80,
                'resizeDuration': 300,
                'fadeDuration': 300,
                'wrapAround': true,
            })
        </script>
    </body>
</html>
