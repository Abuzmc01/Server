// Theme color settings
function changeBodyClass(classVal) {
  $('body').removeClass('main');
  $('body').removeClass('mini-sidebar');
  $('body').removeClass('horizantal');
  $('body').removeClass('rtl-demo');
  $('body').removeClass('dark');
  //fix-header fix-sidebar card-no-border //normal
  //fix-header fix-sidebar card-no-border mini-sidebar //mini
  if (classVal == 'main') {
    //$('body').addClass('main');
  }
  else if (classVal == 'mini-sidebar') {
    $('body').addClass('mini-sidebar');
  }
  else if (classVal == 'horizantal') {
    $('body').addClass('horizantal');
  }
  else if (classVal == 'dark') {
    $('body').addClass('dark');
  }
  else if (classVal == 'rtl-demo') {
    $('body').addClass('rtl-demo');
  }
}

$(document).ready(function(){
  
  function store(name, val) {
      if (typeof (Storage) !== "undefined") {
        localStorage.setItem(name, val);
      } else {
        window.alert('Please use a modern browser to properly view this template!');
      }
  }


    
    $("*[data-theme]").click(function(e){
      e.preventDefault();
        var currentStyle = $(this).attr('data-theme');
        store('theme', currentStyle);
        //input[name="name_of_your_radiobutton"]:checked
        if (currentStyle.indexOf("dark") > 0 && $('.layout:checked').val() == 'dark') {
          $('#theme').attr({ href: '/whmcs7/templates/hostiko-material/css/dark/'+currentStyle+'.css'})
        }
        else{
          $('#theme').attr({ href: '/whmcs7/templates/hostiko-material/css/' + currentStyle + '.css' })
        }
    });
    var $_GETParams = {};
    document.location.search.replace(/\??(?:([^=]+)=([^&]*)&?)/g, function () {
      function decode(s) {
        return decodeURIComponent(s.split("+").join(" "));
      }

      $_GETParams[decode(arguments[1])] = decode(arguments[2]);
    });

    if ($_GETParams['style'] !== undefined){
      store('theme', $_GETParams['style']);
    }

    var currentTheme =  localStorage.getItem('theme');
    if(currentTheme)
    {
      console.log(currentTheme);
      if (currentTheme.indexOf("dark") >= 1 && $('.layout:checked').val() == 'dark') {
        $('#theme').attr({ href: '/whmcs7/templates/hostiko-material/css/dark/' + currentTheme + '.css' })
      }
      else {
        $('#theme').attr({ href: '/whmcs7/templates/hostiko-material/css/' + currentTheme + '.css' })
      }

      $('#themecolors li a').removeClass('working');
      $('#themecolors li a').each(function () {
        if (currentTheme == $(this).attr('data-theme')){
          $(this).addClass('working');
        }
      });
    }
    // color selector
      $('#themecolors').on('click', 'a', function(){
        $('#themecolors li a').removeClass('working');
        $(this).addClass('working');
        
        var url = window.location.href;
        if (url.indexOf("&style=") > 0) {
          var url1 = url.substring(0, url.indexOf("&style="));
          var str1 = "&style=" + $_GETParams['style'];
          var url2 = url.substring(url.indexOf("&style=") + str1.length, url.length);
          url = url1 + url2;
        }
      
        if (url.indexOf("?style") >= 1) {
          url = url.substring(0, url.indexOf("?style"));
          url += "?style=" + $(this).attr('data-theme');
        }        
        else if (url.indexOf("?")>=1){
          url += "&style=" + $(this).attr('data-theme');
        }
        else{
          url += "?style=" + $(this).attr('data-theme');
        }

        //window.location.href = url;
      
      });

      $('.layout').on('click', function () {
        var layout = $(this).val();
        store('layout', layout);
        changeBodyClass(layout);
        /*$('#themecolors li a').removeClass('working');
        $(this).addClass('working');

        var url = window.location.href;
        if (url.indexOf("&style=") > 0) {
          var url1 = url.substring(0, url.indexOf("&style="));
          var str1 = "&style=" + $_GETParams['style'];
          var url2 = url.substring(url.indexOf("&style=") + str1.length, url.length);
          url = url1 + url2;
        }

        if (url.indexOf("?style") >= 1) {
          url = url.substring(0, url.indexOf("?style"));
          url += "?style=" + $(this).attr('data-theme');
        }
        else if (url.indexOf("?") >= 1) {
          url += "&style=" + $(this).attr('data-theme');
        }
        else {
          url += "?style=" + $(this).attr('data-theme');
        }

        window.location.href = url;
        */
      });



    // if ($_GETParams['layout'] !== undefined) {
    //   changeBodyClass($_GETParams['layout']);
    //   console.log("Class: " + $_GETParams['layout']);
    //   $('.layout[value="' + $_GETParams['layout'] + '"]').attr('checked', true);
    // }

});

$(function () {
  var $_GETParams = {};
  document.location.search.replace(/\??(?:([^=]+)=([^&]*)&?)/g, function () {
    function decode(s) {
      return decodeURIComponent(s.split("+").join(" "));
    }

    $_GETParams[decode(arguments[1])] = decode(arguments[2]);
  });
  if ($_GETParams['layout'] !== undefined) {
    
    console.log("Class: " + $_GETParams['layout']);
    $('.layout[value="' + $_GETParams['layout'] + '"]').trigger('click');
  }
});
 function get(name) {
    
  }
