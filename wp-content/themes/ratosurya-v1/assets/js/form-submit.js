jQuery(document).ready(function ($) {
    $('form.contactForm').on('submit',function (e) {
        e.preventDefault();
        var fullname = $('.fullname').val();
        var emailId = $('.emailId').val();
        var phone = $('.phone').val();
        var message = $('.message').val();

        $.ajax({
            url: admin_ajax.ajax_url,
            dataType:'json',
            type:"post",
            data:{
                action:'contact_form_submit',
                fullname:fullname,
                emailId:emailId,
                phone:phone,
                message:message,
                _ajax_nonce: admin_ajax.nonce,
            },
            success: function(result){
                $('.modal-body').html(result.message);
                $('#contactModal').modal('show');
                $('form.contactForm').trigger("reset");
            },
            error: function(){
                $('.modal-body').html('<p>Error while sending email!!!</p>');
                $('#contactModal').modal('show');
            }

        });
    })
});