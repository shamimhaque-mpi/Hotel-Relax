
        <!-- navbar nav start -->
        <nav class="fixed-top">
            <!-- contact nav -->
            <div class="contact-nav">
                <div class="container">
                    <div class="cnav-content">
                        <div class="contact_access">
                            <a href="mailto:hello@info.com"><i class="icon ion-ios-mail"></i> hello@freelanceitlab.com</a>
                            <a href="tel:01937476716" class="call"><i class="icon ion-ios-call"></i> +880 1937 476716</a>
                        </div>
                        <ul class="social">
                            <li><a href="https://www.youtube.com/" target="_blank" class="youtube"><i class="icon ion-logo-youtube"></i></a></li>
                            <li><a href="https://www.facebook.com/" target="_blank" class="facebook"><i class="icon ion-logo-facebook"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- main nav -->
            <div class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="brand" href="">
                        <img src="images/logo/logo.png" alt="">
                    </a>
                    <button class="navbar-toggler" data-toggle="collapse" data-target="#nav">
                        <i class="icon ion-ios-menu"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="nav">
                        <ul class="navbar-nav">
                            <li><a href="<?=site_url('')?>" class="nav-link active">Home</a></li>
                            <li><a href="<?=site_url('about')?>" class="nav-link">About Us</a></li>
                            <li><a href="<?=site_url('home/service')?>" class="nav-link">Services</a></li>
                            <li><a href="<?=site_url('room')?>" class="nav-link">Rooms</a></li>
                            <li class="dropdown">
                                <span class="nav-link" data-toggle="dropdown">Gallery</span>
                                <ul class="dropdown-menu">
                                    <li><a href="<?=site_url('image_gallery')?>">Image Gallery</a></li>
                                    <li><a href="<?=site_url('video_gallery')?>">Video Gallery</a></li>
                                </ul>
                            </li>
                            <li><a href="<?=site_url('home/news')?>" class="nav-link">News</a></li>
                            <li><a href="<?=site_url('home/contact')?>" class="nav-link">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- navbar nav end -->