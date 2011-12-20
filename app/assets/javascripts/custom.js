$(function() {

  //===== Alert windows =====//

  $(".bAlert").click( function() {
    jAlert('This is a custom alert box. Title and this text can be easily editted', 'Alert Dialog Sample');
  });
  
  $(".bConfirm").click( function() {
    jConfirm('Can you confirm this?', 'Confirmation Dialog', function(r) {
      jAlert('Confirmed: ' + r, 'Confirmation Results');
    });
  });
  
  $(".bPromt").click( function() {
    jPrompt('Type something:', 'Prefilled value', 'Prompt Dialog', function(r) {
      if( r ) alert('You entered ' + r);
    });
  });
  
  $(".bHtml").click( function() {
    jAlert('You can use HTML, such as <strong>bold</strong>, <em>italics</em>, and <u>underline</u>!');
  });

  //===== Accordion =====//    
  
  $('div.menu_body:eq(0)').show();
  $('.acc .head:eq(0)').show().css({color:"#2B6893"});
  
  $(".acc .head").click(function() {  
    $(this).css({color:"#2B6893"}).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
    $(this).siblings().css({color:"#404040"});
  });

  //===== WYSIWYG editor =====//
  
  $('.wysiwyg').wysiwyg({
    iFrameClass: "wysiwyg-input",
    controls: {
      bold          : { visible : true },
      italic        : { visible : true },
      underline     : { visible : true },
      strikeThrough : { visible : false },
      
      justifyLeft   : { visible : true },
      justifyCenter : { visible : true },
      justifyRight  : { visible : true },
      justifyFull   : { visible : true },
      
      indent  : { visible : true },
      outdent : { visible : true },
      
      subscript   : { visible : false },
      superscript : { visible : false },
      
      undo : { visible : true },
      redo : { visible : true },
      
      insertOrderedList    : { visible : true },
      insertUnorderedList  : { visible : true },
      insertHorizontalRule : { visible : false },

      h1: {
        visible: true,
        className: 'h1',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h1>' : 'h1',
        tags: ['h1'],
        tooltip: 'Header 1'
      },
      h2: {
        visible: true,
        className: 'h2',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h2>' : 'h2',
        tags: ['h2'],
        tooltip: 'Header 2'
      },
      h3: {
        visible: true,
        className: 'h3',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h3>' : 'h3',
        tags: ['h3'],
        tooltip: 'Header 3'
      },
      h4: {
        visible: true,
        className: 'h4',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h4>' : 'h4',
        tags: ['h4'],
        tooltip: 'Header 4'
      },
      h5: {
        visible: true,
        className: 'h5',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h5>' : 'h5',
        tags: ['h5'],
        tooltip: 'Header 5'
      },
      h6: {
        visible: true,
        className: 'h6',
        command: ($.browser.msie || $.browser.safari) ? 'formatBlock' : 'heading',
        arguments: ($.browser.msie || $.browser.safari) ? '<h6>' : 'h6',
        tags: ['h6'],
        tooltip: 'Header 6'
      },

      cut   : { visible : true },
      copy  : { visible : true },
      paste : { visible : true },
      html  : { visible: true },
      increaseFontSize : { visible : false },
      decreaseFontSize : { visible : false }
    },
    events: {
      click: function(event) {
        if ($("#click-inform:checked").length > 0) {
          event.preventDefault();
          alert("You have clicked jWysiwyg content!");
        }
      }
    }
  });

  //===== ToTop =====//

  $().UItoTop({ easingType: 'easeOutQuart' });

  //===== Contacts list =====//
  
  $('#myList').listnav({ 
    initLetter: 'a', 
    includeAll: true, 
    includeOther: false,
    flagDisabled: true, 
    noMatchText: 'Nothing matched your filter, please click another letter.', 
    prefixes: ['the','a']
  });

  //===== Calendar =====//

  var date = new Date();
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();
  
  $('#calendar').fullCalendar({
    header: {
      left: 'prev,next',
      center: 'title',
      right: 'month,basicWeek,basicDay'
    },
    editable: true,
    events: [
      {
        title: 'All day event',
        start: new Date(y, m, 1)
      },
      {
        title: 'Long event',
        start: new Date(y, m, 5),
        end: new Date(y, m, 8)
      },
      {
        id: 999,
        title: 'Repeating event',
        start: new Date(y, m, 2, 16, 0),
        end: new Date(y, m, 3, 18, 0),
        allDay: false
      },
      {
        id: 999,
        title: 'Repeating event',
        start: new Date(y, m, 9, 16, 0),
        end: new Date(y, m, 10, 18, 0),
        allDay: false
      },
      {
        title: 'Actually any color could be applied for background',
        start: new Date(y, m, 30, 10, 30),
        end: new Date(y, m, d+1, 14, 0),
        allDay: false,
        color: '#B55D5C'
      },
      {
        title: 'Lunch',
        start: new Date(y, m, 14, 12, 0),
        end: new Date(y, m, 15, 14, 0),
        allDay: false
      },
      {
        title: 'Birthday PARTY',
        start: new Date(y, m, 18),
        end: new Date(y, m, 20),
        allDay: false
      },
      {
        title: 'Click for Google',
        start: new Date(y, m, 27),
        end: new Date(y, m, 29),
        url: 'http://google.com/'
      }
    ]
  });

  //===== Dynamic data table =====//

  oTable = $('#example').dataTable({
    "bJQueryUI": true,
    "sPaginationType": "full_numbers",
    "sDom": '<""f>t<"F"lp>'
  });

  //===== Form elements styling =====//
  
  $('form').jqTransform({imgPath:'../images/forms'});

  //===== Form validation engine =====//

  $("#valid").validationEngine();

  //===== Datepickers =====//

  $( ".datepicker" ).datepicker({ 
    defaultDate: +7,
    autoSize: true,
    appendText: '(dd-mm-yyyy)',
    dateFormat: 'dd-mm-yy'
  });

  //===== Progressbar (Jquery UI) =====//

  $( "#progressbar" ).progressbar({
    value: 37
  });

  //===== Tooltip =====//
    
  $('.leftDir').tipsy({fade: true, gravity: 'e'});
  $('.rightDir').tipsy({fade: true, gravity: 'w'});
  $('.topDir').tipsy({fade: true, gravity: 's'});
  $('.botDir').tipsy({fade: true, gravity: 'n'});

  //===== Information boxes =====//

  $(".hideit").click(function() {
    $(this).fadeOut(400);
  });

  //=====Resizable table columns =====//
  
  var onSampleResized = function(e){
    var columns = $(e.currentTarget).find("th");
    var msg = "columns widths: ";
    columns.each(function(){ msg += $(this).width() + "px; "; })
  };  

  $(".resize").colResizable({
    liveDrag:true, 
    gripInnerHtml:"<div class='grip'></div>", 
    draggingClass:"dragging", 
    onResize:onSampleResized});

  //===== Left navigation submenu animation =====//  

  $("ul.sub li a").hover(function() {
    $(this).stop().animate({ color: "#3a6fa5" }, 400);
  },function() {
    $(this).stop().animate({ color: "#494949" }, 400);
  });

  //===== Autogrowing textarea =====//
  
  $(".auto").autoGrow();

  //===== Autotabs. Inline data rows =====//

  $('.onlyNums input').autotab_magic().autotab_filter('numeric');
  $('.onlyText input').autotab_magic().autotab_filter('text');
  $('.onlyAlpha input').autotab_magic().autotab_filter('alpha');
  $('.onlyRegex input').autotab_magic().autotab_filter({ format: 'custom', pattern: '[^0-9\.]' });
  $('.allUpper input').autotab_magic().autotab_filter({ format: 'alphanumeric', uppercase: true });

  //===== jQuery UI sliders =====//  
  
  $( ".uiSlider" ).slider();
  
  $( ".uiSliderInc" ).slider({
    value:100,
    min: 0,
    max: 500,
    step: 50,
    slide: function( event, ui ) {
      $( "#amount" ).val( "$" + ui.value );
    }
  });
  $( "#amount" ).val( "$" + $( ".uiSliderInc" ).slider( "value" ) );
    
  $( ".uiRangeSlider" ).slider({
    range: true,
    min: 0,
    max: 500,
    values: [ 75, 300 ],
    slide: function( event, ui ) {
      $( "#rangeAmount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
    }
  });
  $( "#rangeAmount" ).val( "$" + $( ".uiRangeSlider" ).slider( "values", 0 ) +" - $" + $( ".uiRangeSlider" ).slider( "values", 1 ));
      
  $( ".uiMinRange" ).slider({
    range: "min",
    value: 37,
    min: 1,
    max: 700,
    slide: function( event, ui ) {
      $( "#minRangeAmount" ).val( "$" + ui.value );
    }
  });
  $( "#minRangeAmount" ).val( "$" + $( ".uiMinRange" ).slider( "value" ) );
  
  $( ".uiMaxRange" ).slider({
    range: "max",
    min: 1,
    max: 100,
    value: 20,
    slide: function( event, ui ) {
      $( "#maxRangeAmount" ).val( ui.value );
    }
  });
  $( "#maxRangeAmount" ).val( $( ".uiMaxRange" ).slider( "value" ) );  

  $( "#eq > span" ).each(function() {
    // read initial values from markup and remove that
    var value = parseInt( $( this ).text(), 10 );
    $( this ).empty().slider({
      value: value,
      range: "min",
      animate: true,
      orientation: "vertical"
    });
  });

  //===== Autofocus =====//  
  
  $('.autoF').focus();

  //===== Tabs =====//

  $.fn.simpleTabs = function(){ 
  
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
  
  };//end function

  $("div[class^='widget']").simpleTabs(); //Run function on any div with class name of "Simple Tabs"

  //===== Placeholder for all browsers =====//
  
  $("input").each(
    function(){
      if($(this).val()=="" && $(this).attr("placeholder")!=""){
      $(this).val($(this).attr("placeholder"));
      $(this).focus(function(){
        if($(this).val()==$(this).attr("placeholder")) $(this).val("");
      });
      $(this).blur(function(){
        if($(this).val()=="") $(this).val($(this).attr("placeholder"));
      });
    }
  });

  //===== User nav dropdown =====//    

  $('.dd').click(function () {
    $('ul.menu_body').slideToggle(100);
  });
  
  $('.acts').click(function () {
    $('ul.actsBody').slideToggle(100);
  });
  
  //===== Collapsible elements management =====//
  
  $('.active').collapsible({
    defaultOpen: 'current',
    cookieName: 'nav',
    speed: 300
  });

  $('.exp').collapsible({
    defaultOpen: 'current',
    cookieName: 'navAct',
    cssOpen: 'active',
    cssClose: 'inactive',
    speed: 300
  });

  $('.opened').collapsible({
    defaultOpen: 'opened,toggleOpened',
    cssOpen: 'inactive',
    cssClose: 'normal',
    speed: 200
  });

  $('.closed').collapsible({
    defaultOpen: '',
    cssOpen: 'inactive',
    cssClose: 'normal',
    speed: 200
  });
});
