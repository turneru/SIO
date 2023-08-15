<footer role="contentinfo">
  <div id="footer_top"></div>
  <div id="footer" class="clearfix">
    <div class="container">
      <div class="footer-content">
        <div class="row">
          <div class="col-md-3">
            <div class="mobile">
              <div class="address">
                <p>2001 K Street NW, 3rd Floor North</p>
                <p>Washington, DC 20006 USA</p>
                <p>+1-202-367-1164</p>
                <a href="mailto:info@sio-central.org" class="footer_email">info@sio-central.org</a>
              </div>
            </div>
            <p><a href="https://www.sioprospectus.org/" target="_blank" class="footer_link">SIO Prospectus</a></p>
            <p><a href="https://www.ioawarenessweek.org/" class="footer_link" target="_blank">IO Awareness Week</a></p>
            <p><a href="/Events/Annual-Scientific-Meeting" class="footer_link">SIO Annual Meeting</a></p>
            <p><a href="/Education/SIO-Learning-Center" class="footer_link">SIO Learning Center</a>
          </div>
          <div class="col-md-6 center">
            <div class="logo">
              <a href="/"><img src="<%= SkinPath %>images/SIO_Logo_white.svg" alt="SIO" class="img-responsive" width="88" /></a>
            </div>
            <div class="social">
              <a href="https://www.facebook.com/SIOcentral" class="social_media" target="_blank"><i class="fa-brands fa-facebook-f fa-fw"></i></a>
              <a href="https://www.linkedin.com/company/siocentral" class="social_media" target="_blank"><i class="fa-brands fa-linkedin-in fa-fw"></i></a>
              <a href="https://twitter.com/SIO_Central" class="social_media" target="_blank"><i class="fa-brands fa-twitter fa-fw"></i></a>
            </div>
            <div class="copyright">
              <a href="/Terms-Conditions" class="footer_email">Terms & Conditions</a> | <a href="/Privacy-Policy" class="footer_email">Privacy Policy</a> | &copy; Copyright <span id="year"></span>
            </div>
          </div>
          <div class="col-md-3 right">
            <div class="address">
              <p>2001 K Street NW, 3rd Floor North</p>
              <p>Washington, DC 20006 USA</p>
              <p>+1-202-367-1164</p>
              <a href="mailto:info@sio-central.org" class="footer_email">info@sio-central.org</a>
            </div>
          </div>
        </div>
        <div class="mobile">
          <div class="copyright">
            <a href="/Terms-Conditions" class="footer_email">Terms & Conditions</a> | <a href="/Privacy-Policy" class="footer_email">Privacy Policy</a> | &copy; Copyright <span id="year"></span>
          </div>
        </div>
        <div class="row no-margin">
          <div class="twelve columns">
            <% If Request.IsAuthenticated Then%>
            <a href="/home/ctl/logoff" class="hidden_link">Logoff</a>
            <% Else%>
            <a href="/login.aspx?mode=host" class="hidden_link">Login</a>
            <% End If%>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<script>
//Hide mega menu on scroll
$(window).scroll(function(){
  if ( $(document).scrollTop() > 50 ) {
      $('#dnnMenu .subLevel').hide();
    } 
  else {
      $('#dnnMenu .subLevel').show();
    }
});
	
//Slicknav close open menu items when opening another
function slicknavOpened(trigger) {
    var $trigger = $(trigger[0]);
    if ($trigger.hasClass('slicknav_btn')) {
        // this is the top-level menu/list opening.
        // we only want to trap lower-level/sublists.
        return;
    }
    // trigger is an <a> anchor contained in a <li>
    var $liParent = $trigger.parent();
    // parent <li> is contained inside a <ul>
    var $ulParent = $liParent.parent();
    // loop through all children of parent <ul>
    // i.e. all siblings of this <li>
    $ulParent.children().each(function () {
        var $child = $(this);
        if ($child.is($liParent)) {
            // this child is self, not is sibling
            return;
        }
        if ($child.hasClass('slicknav_collapsed')) {
            // this child is already collapsed
            return;
        }
        if (!$child.hasClass('slicknav_open')) {
            // could throw an exception here: this shouldn't happen
            // because I expect li to have class either slicknav_collapsed or slicknav_open
            return;
        }
        // found a sibling <li> which is already open.
        // expect that its first child is an anchor item.
        var $anchor = $child.children().first();
        if (!$anchor.hasClass('slicknav_item')) {
            return;
        }
        // close the sibling by emulating a click on its anchor.
        $anchor.click();
    });
}	

//Add Search to Mobile Menu
function addSearch() {
      //var searchPanel = $(".search_panel").html();
      //$(".slicknav_nav").prepend(searchPanel);
      //$(".col-md-10 .search_panel").remove();
}
//Add Login link to Mobile Menu
function addLinks() {
      var headerLinks = $("#header .header_links").html();
      $(".slicknav_nav").append(headerLinks);
}
//Add open class to mobile menu to control css
function slicknavOpen() {
   var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_open')) {
      $(".slicknav_menu").addClass("open");
      $(".search_panel").show();
    }
}
//Remove open class from mobile menu
function slicknavClosed() {
	var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_collapsed')) {
      $(".slicknav_menu").removeClass("open");
      $(".search_panel").hide();
    }
}	
	
$(function() { 
	$('#navigation .nav #dnnMenu .topLevel').slicknav({
    allowParentLinks: true,
    prependTo:'#header',
    init: function() { addLinks(); addSearch(); },
    beforeOpen: function(trigger) { slicknavOpened(trigger); slicknavOpen(); }, 
		beforeClose: function() { slicknavClosed(); }
	});
});	

//Header Search show hide function	
$("#showsearch").hover(
	function() {
		$(".search_panel").addClass("show_search");
		return false;
	}
);
$(".search_panel").mouseleave(
	function() {
		$(".search_panel").removeClass("show_search");
	}
);

//Accordion js	
$(document).ready(function(){   
  $("div.toggler").click(function() {
    if ($('.toggle_info').is(':visible')) {
      $(".toggle_info").slideUp(300);
			$("h3 i").removeClass('minus-sign').addClass('plus-sign');
			$(".col-md-12").removeClass("open");
    }
    if ($(this).next(".toggle_info").is(':visible')) {
      $(this).next(".toggle_info").slideUp(300);
			$(this).prev(".col-md-12").removeClass("open");
			$("h3 i").removeClass('minus-sign').addClass('plus-sign');
    } 
    else {
      $(this).next(".toggle_info").slideDown(300);
			$(this).find("h3 i").addClass('minus-sign');
			$(this).parent(".col-md-12").addClass("open");
    }
  });
});	
	
$("#dnnMenu .topLevel li a").hover(
	function() {
		var searchPanel = $(".search_panel");	
		if (searchPanel.hasClass('show_search')) {
			$(".search_panel").removeClass("show_search");
		}	
	}
);

//Search placeholder text
$(".bstrap30 .sb-default input.form-control").attr("placeholder", "Type here...");

$(document).ready(function() {
	$(".slicknav_nav .bstrap30 .sb-default input.tt-input").addClass("mobile_input").attr("placeholder", "Type here...");
});		

//Search button text
$(".bstrap30 .glyphicon-search").html("SEARCH");

//Footer Copyright year
var currentYear = (new Date()).getFullYear();
$(document).ready(function() {
	$("#year").text(currentYear);
});

//Events Mobile Menu
$(function() { 
	$('#eventMenu .topLevel').slicknav({
  		allowParentLinks:true,
		showChildren: true,
		prependTo:'#eventmenu_mobile'
	});
});	

//Hide elements from login page
if (window.location.href.indexOf("login.aspx?") > -1) {
	$("#home_top").hide();
}   

//Cookie popup
$(document).euCookieLawPopup().init({
  popupPosition : 'bottom',
  colorStyle : 'default',
  compactStyle : false,
  popupTitle : 'This website is using cookies',
  popupText : 'This website uses cookies to ensure you get the best experience on our website. To learn more about cookies and how we use them, please view our <a href="/Privacy-Policy">privacy policy</a>.',
  buttonContinueTitle : 'Agree',
  buttonLearnmoreTitle : '',
  buttonLearnmoreOpenInNewWindow : true,
  agreementExpiresInDays : 30,
  autoAcceptCookiePolicy : false,
  htmlMarkup : null
});
	
</script>
	
