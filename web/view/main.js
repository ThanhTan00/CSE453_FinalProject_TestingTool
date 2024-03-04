/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */
/* global select */

$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll > 1) {
        $("#navbar").addClass("header-scrolled");
    } else {
        $("#navbar").removeClass("header-scrolled");
    }
});

