// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  //===== Main nav =====//
  var current_controller = $("body").attr("id");
  $("#menu li." + current_controller + " a").addClass("active");

  //===== Alert windows =====//
  $(".bAlert").click(function() {
    jAlert('This is a custom alert box. Title and this text can be easily editted', 'Alert Dialog Sample');
  });

  $(".bConfirm").click(function() {
    jConfirm('Can you confirm this?', 'Confirmation Dialog', function(r) {
      jAlert('Confirmed: ' + r, 'Confirmation Results');
    });
  });

  $(".bPromt").click(function() {
    jPrompt('Type something:', 'Prefilled value', 'Prompt Dialog', function(r) {
      if (r) alert('You entered ' + r);
    });
  });

  $(".bHtml").click(function() {
    jAlert('You can use HTML, such as <strong>bold</strong>, <em>italics</em>, and <u>underline</u>!');
  });

  //===== Accordion =====//
  $('div.menu_body:eq(0)').show();
  $('.acc .head:eq(0)').show().css({
    color: "#2B6893"
  });

  $(".acc .head").click(function() {
    $(this).css({
      color: "#2B6893"
    }).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
    $(this).siblings().css({
      color: "#404040"
    });
  });

  //===== ToTop =====//
  $().UItoTop({
    easingType: 'easeOutQuart'
  });

  //===== Form elements styling =====//
  $('form').jqTransform({
    imgPath: '../images/forms'
  });

  //===== Datepickers =====//
  $(".datepicker").datepicker({
    defaultDate: +7,
    autoSize: true,
    dateFormat: 'yy-mm-dd'
  });

  //===== Progressbar (Jquery UI) =====//
  $("#progressbar").progressbar({
    value: 37
  });

  //===== Tooltip =====//
  $('.leftDir').tipsy({
    fade: true,
    gravity: 'e'
  });
  $('.rightDir').tipsy({
    fade: true,
    gravity: 'w'
  });
  $('.topDir').tipsy({
    fade: true,
    gravity: 's'
  });
  $('.botDir').tipsy({
    fade: true,
    gravity: 'n'
  });

  //===== Information boxes =====//
  $(".hideit").click(function() {
    $(this).fadeOut(400);
  });

  //=====Resizable table columns =====//
  $(".resize").colResizable({
    liveDrag: true,
    gripInnerHtml: "<div class='grip'></div>",
    draggingClass: "dragging",
    onResize: onSampleResized
  });

  var onSampleResized = function(e) {
      var columns = $(e.currentTarget).find("th");
      var msg = "columns widths: ";
      columns.each(function() {
        msg += $(this).width() + "px; ";
      })
    };

  //===== Autogrowing textarea =====//
  $(".auto").autoGrow();

  //===== Autotabs. Inline data rows =====//
  $('.onlyNums input').autotab_magic().autotab_filter('numeric');
  $('.onlyText input').autotab_magic().autotab_filter('text');
  $('.onlyAlpha input').autotab_magic().autotab_filter('alpha');
  $('.onlyRegex input').autotab_magic().autotab_filter({
    format: 'custom',
    pattern: '[^0-9\.]'
  });
  $('.allUpper input').autotab_magic().autotab_filter({
    format: 'alphanumeric',
    uppercase: true
  });

  //===== Autofocus =====//
  $('.autoF').focus();

  //===== Tabs =====//
  $.fn.simpleTabs = function() {

    //Default Action
    $(this).find(".tab_content").hide(); //Hide all content
    $(this).find("ul.tabs li:first").addClass("activeTab").show(); //Activate first tab
    $(this).find(".tab_content:first").show(); //Show first tab content
    //On Click Event
    $("ul.tabs li").click(function() {
      $(this).parent().parent().find("ul.tabs li").removeClass("activeTab"); //Remove any "active" class
      $(this).addClass("activeTab"); //Add "active" class to selected tab
      $(this).parent().parent().find(".tab_content").hide(); //Hide all tab content
      var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
      $(activeTab).show(); //Fade in the active content
      return false;
    });

  }; //end function
  $("div[class^='widget']").simpleTabs();

  //===== Placeholder for all browsers =====//
  $("input").each(

  function() {
    if ($(this).val() == "" && $(this).attr("placeholder") != "") {
      $(this).val($(this).attr("placeholder"));
      $(this).focus(function() {
        if ($(this).val() == $(this).attr("placeholder")) $(this).val("");
      });
      $(this).blur(function() {
        if ($(this).val() == "") $(this).val($(this).attr("placeholder"));
      });
    }
  });
});