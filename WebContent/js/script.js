/* 
    Document   : script.js
    Created on : 28 août 2013, 10:35:47
    Author     : Zakaria BENABID
    Description:
        script javascript
*/


$('document').ready(function() {
                if ($('select').length != 0) {
                   $('select').customSelect();
                }

                if ($('.pupUpEdit .OkBtn').length != 0) {
                    $('.pupUpEdit .OkBtn').click(function() {
                        $(this).parents(".pupUpEdit form").submit();

                        $.fancybox.close();
                        return false;
                    });
                }
                if ($('.editInfo').length != 0) {
                    $('.editInfo').fancybox();
                }
                $('#info-1').popover({trigger: "hover"});
                $('#info-2').popover();
                $(".txtProcent").steper(0, 100);
                $(".txtProcent input").disableCopyPasteCash();
                
                  $(".flashNews .content").easySlider({
                    auto: true,
                    continuous: true,
//                    frame: 3
                });
            });