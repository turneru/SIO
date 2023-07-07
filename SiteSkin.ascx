<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>				
<div id="body_content" class="section_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID %> subsection_<% If PortalSettings.ActiveTab.Level > 0 Then%><%=PortalSettings.ActiveTab.BreadCrumbs(1).TabID %><% Else%><%=PortalSettings.ActiveTab.TabID %><% End If%> page_<%=PortalSettings.ActiveTab.TabID %>">
	<div id="page_title">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div class="breadcrumbs">
						<% If PortalSettings.ActiveTab.Level = 1 Then%>
						<div class="level1">
							<dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
						</div>
						<% Else If PortalSettings.ActiveTab.Level = 2 Then%>
						<div class="level2">
							<dnn:BREADCRUMB ID="dnnBreadcrumb2" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
						</div>
						<% Else%>
							<dnn:BREADCRUMB ID="dnnBreadcrumb3" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
						<% End If%>
					</div>
					<div class="page_title">
						<h1><%=PortalSettings.ActiveTab.Title %></h1>	
					</div>
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