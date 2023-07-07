<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>				
<div id="body_content" class="section_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID %> subsection_<% If PortalSettings.ActiveTab.Level > 0 Then%><%=PortalSettings.ActiveTab.BreadCrumbs(1).TabID %><% Else%><%=PortalSettings.ActiveTab.TabID %><% End If%> page_<%=PortalSettings.ActiveTab.TabID %>">
	<div id="event_top">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="TopPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="main_content">
		<div class="sub_container">
			<div class="row">
				<div class="twelve columns">
					<div id="ContentPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>	
</div>
</main>
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->