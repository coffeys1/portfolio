// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

function makeBrowserDraggable() {
    $('.doc-browser').draggable({
        handle: '.window-bar',
        opacity: 0.9,
        containment: 'document'
    })
}

function maximizeWindow() {
    var newWid = $(document).width();
    var newHit = $(document).height();
    $('.doc-browser').css('margin-top', '0px')
        .animate({
            width: newWid,
            height: newHit,
            top: 0,
            left: 0
        });
    $('.sidebar-folder-list').animate({
        height: (newHit - 35)+'px'
    })
    $('.main-content-view').animate({
        width: newWid - $('.sidebar-folder-list').width(),
        height: (newHit - 25)+'px'
    })
}

function minimizeWindow() {
    var newWid = 600;
    var newHit = 400;
    var center = $(document).width()/2 - newWid/2;
    $('.doc-browser').animate({
        width: 600,
        height: 400,
        top: '10%',
        left: center
    });
    $('.sidebar-folder-list').animate({
        height: newHit - 35
    });
    $('.main-content-view').animate({
        width: newWid - $('.sidebar-folder-list').width(),
        height: newHit - 25
    });
}
