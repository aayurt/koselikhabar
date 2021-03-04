

<footer class="footer">
    <section class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="footer-contact-info">
                        <div class="footer-logo">
                            <?php if (get_theme_mod('themeslug_logo')) : ?>
                                <a class="hed-logo" href="<?php echo esc_url(home_url('/')); ?>"
                                   title='<?php echo esc_attr(get_bloginfo('name', 'display')); ?>' rel='home'><img
                                            src="<?php echo esc_url(get_theme_mod('themeslug_logo')); ?>"
                                            alt="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>"
                                            class="img-responsive"></a>

                            <?php else : ?>
                                <a class="hed-logo" href="<?php echo esc_url(home_url('/')); ?>"
                                   title='<?php echo esc_attr(get_bloginfo('name', 'display')); ?>'
                                   rel='home'><?php echo esc_attr(get_bloginfo('name', 'display')); ?></a>
                            <?php endif; ?>
                        </div>
                        <hr>
                        <ul>
                            <li>Phone: <?php echo get_theme_mod('contact_no', '+123 456 7890'); ?> </li>
                            <li>Fax: <?php echo get_theme_mod('fax_no', 'contact@company.com'); ?> </li>
                            <li>Email: <a class="email" href="mailto:<?php echo get_theme_mod('contact_mail', 'contact@company.com'); ?>"></i> <?php echo get_theme_mod('contact_mail', 'contact@company.com'); ?></a> </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <div class="company-info">
                        <!-- <h4>Company Info</h4> -->
                        <div class="footerTitle">
                        <span >कोसेली खबर </span>
                            </div>
                            <hr/>

                        <div class="footerContent">
                            <span>सम्पादक: गणेश ज्ञवाली</span>
                        </div>
                        <div class="footerContent">
                             <span>संचालक: सुनाइल थापा</span>
                        </div>
                        
                        <!-- <?php
                            wp_nav_menu(
                                array(
                                    'theme_location' => 'footer-menu',
                                    'container' => '',
                                    'items_wrap' => '<ul ">%3$s</ul>',
                                )
                            );
                        ?> -->
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="footer-contact-form">
                        <h4>Contact Us</h4>
                        <form role="form" method="post" class="contactForm">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control fullname" name="fullname" placeholder="Name" required="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control emailId" name="emailId" id="exampleInputEmail1" placeholder="Email Address" required="">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control phone" name="phone" placeholder="Tel.No." required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea class="form-control message" name="message" rows="4" placeholder="Type your message" required=""></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="submit" class="btn btn-default">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <div class="modal fade" id="contactModal" tabindex="-1" role="dialog" aria-labelledby="econtactModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="contactModalLabel">Contact Response</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h4>Copyright © <?php echo date('Y') ?>. All Rights Reserved.</h4>
                </div>
            </div>
        </div>
    </section>
</footer>

<script src="<?php echo get_template_directory_uri() ?>/assets/js/jquery.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/js/bootstrap.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/js/main.js"></script>
<?php wp_footer();?>
</body>
</html>