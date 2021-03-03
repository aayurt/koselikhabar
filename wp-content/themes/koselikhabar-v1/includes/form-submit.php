<?php

add_action( 'init', 'my_script_enqueuer' );
function my_script_enqueuer() {
    wp_register_script( "form_submit", get_template_directory_uri().'/assets/js/form-submit.js', array('jquery'),false,true );
    wp_localize_script( 'form_submit', 'admin_ajax',
        array(
            'ajax_url' => admin_url( 'admin-ajax.php' ),
            'nonce'     =>  wp_create_nonce('nonce_name')
        )
    );
    wp_enqueue_script( 'jquery' );
    wp_enqueue_script( 'form_submit' );
}

function contact_form_submit() {
    check_ajax_referer('nonce_name');

    $name = strip_tags($_POST['fullname']);

    $email = $_POST['emailId'];

    $phone = $_POST['phone'];

    if(get_theme_mod('contact_mail', '') == '')
        $emailTo = get_option('admin_email');
    else
        $emailTo = get_theme_mod('contact_mail', '');

    $subject = 'Enquiry From '.$name;

    $message = strip_tags($_POST['message']);
    $body = '<table width="100%">
                    <tr><th width="30%">Name:</th><td width="70%">'.$name.'</td></tr>
                    <tr><th>Email:</th><td>'.$email.'</td></tr>
                    <tr><th>Phone:</th><td>'.$phone.'</td></tr>
                    <tr><th>Message:</th><td>'.$message.'</td></tr>
                </table>';
    //$body = "Name: $name \n\nEmail: $email \n\n Message: $message";

    $headers[]  = 'MIME-Version: 1.0' . "\r\n";

    $headers[] = 'Content-type: text/html; text/html; charset=UTF-8';

    $headers[] = 'From: '.$name.' <'.$email.'>' ;

    if (wp_mail( $emailTo, $subject, $body, $headers )){
        $successMessage = 'Message successfully sent. We will contact you soon.';
    }
    else{
        $successMessage = 'Error while sending email!!!';
    }

    echo json_encode(array('message'=> $successMessage));
    die;
}
add_action( 'wp_ajax_contact_form_submit', 'contact_form_submit' );    //execute when wp logged in
add_action( 'wp_ajax_nopriv_contact_form_submit', 'contact_form_submit'); //execute when logged out