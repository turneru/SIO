<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="avt" TagName="SearchBoost" Src="~/DesktopModules/DnnSharp/SearchBoost/SearchInput.ascx"%>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

<script src="//kit.fontawesome.com/9a1fb9d613.js" crossorigin="anonymous"></script>
	
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<dnn:DnnJsInclude runat="server" FilePath="js/jquery.slicknav.js" PathNameAlias="SkinPath" />

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
	
<script>
	var version_date=new Date();
	document.write('<link href="<%= SkinPath %>css/styles.css?v='+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 1000) +'" type="text/css" rel="stylesheet"/>');
</script>
	

<!--- Rotator Stuff
Info on how to use http://kenwheeler.github.io/slick/
-----------------------------------------------------------   --->
<dnn:DnnJsInclude runat="server" FilePath="js/slick.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick-theme.css" PathNameAlias="SkinPath" />

<!--- FancyBox Stuff
Info on how to use http://fancyapps.com/fancybox/3/
----------------------------------------- --->
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.css" />

<!--- Animation on Scroll
----------------------------------------------------
https://michalsnik.github.io/aos/ -->
<link href="//unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="//unpkg.com/aos@2.3.0/dist/aos.js"></script>

<!--- GDPR Popup
-------------------------------------------------- -->
<dnn:DnnJsInclude runat="server" FilePath="js/cookie-popup.js" PathNameAlias="SkinPath" />		

<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" href="<%= SkinPath %>images/favicon.png">

<a href="#skip_to_content" class="skip-to-content-link">Skip to Content</a>
<header role="banner">
	<% If PortalSettings.ActiveTab.TabID = 21 %>
		<div id="ticker">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="TickerPane" runat="Server"></div>
				</div>
			</div>
		</div>
	<% Else%>
	<% End If%>

    <div id="header" class="page_id_<%=PortalSettings.ActiveTab.TabID %>">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-2">
					<a href="/"><img src="<%= SkinPath %>images/SIO_Logo.svg" alt="SIO" class="img-responsive" width="191" /></a>
				</div>
				<div class="col-md-9">
					<!--- Navigation Include--->
					<!--#include file="navigation.ascx"-->
				</div>
				<div class="col-md-1">
					<div class="header_links">
					<% If Request.IsAuthenticated Then%>
						<a href="https://website.mpxstage.com/account/logout.aspx" class="header_link">Logout</a>
					<% Else%>
						<a href="/login" class="header_link">Login</a>
					<% End If%>
						<a id="showsearch" class="header_link search_link"><i class="fa-solid fa-magnifying-glass"></i></a>
					</div>	
				</div>
            </div>
        </div>
    </div>
	<div class="container outer_search_container">
		<div class="row no-margin">
			<div class="col-md-2 desktop"> </div>
			<div class="col-md-10">
				<div class="search_panel">
					<div class="container search_container">
						<div class="row no-margin">
							<div class="col-md-12">
								<avt:SearchBoost runat = "server" id = "avtSearch" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
</header>	