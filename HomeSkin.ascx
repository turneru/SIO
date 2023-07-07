<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>	
<div id="home_body_content">
	<div id="home_top">
		<div class="media_container">
			<div class="circle_crop">
				<div class="outer_video">
					<div class="video_container">
						<video class="fullscreen-bg__video video-ready" poster="/Portals/_default/Skins/SiteSkin/images/poster.png" loop="" muted="" playsinline="" autoplay="true" autpreload="metadata" aria-hidden="true">
						<source data-src="" type="video/mp4" src="/Portals/_default/Skins/SiteSkin/SIO Website Header.mp4">
						Your browser does not support the video tag.
						</video>                
					</div>
				</div>
			</div>	
		</div>
		<div class="home_info">		
			<div class="container">
				<div class="tagline" data-aos="fade-right" data-aos-duration="800" data-aos-easing="ease-in-sine" data-aos-once="true">
					<div class="line1">Advancing the field of</div>
					<div class="line2">Interventional</div>
					<div class="line3">Oncology</div>
				</div>
				<div class="row no-margin">
					<div class="six columns">
						<div class="image_circle" data-aos="fade-in" data-aos-duration="900" data-aos-once="true" data-aos-delay="400">
							<img src="<%= SkinPath %>images/SIO_AC24.png" alt="SIO Annual Conference 2024" class="img-responsive" />
						</div>
						<div class="info_circle" data-aos="fade-in" data-aos-duration="700"  data-aos-once="true" data-aos-delay="700" data-aos-anchor=".image_circle">
							<div>SIO is excited to host SIO2024 in Long Beach, CA from 25–29 January. Exciting changes to the event are coming soon.  More text could go here as needed.</div>
						</div>	
					</div>
					<div class="six columns">
						<div class="home_top_links">
							<p><a href="/" class="button-secondary"><span>Call for Abstracts</span></a></p>
							<p><a href="/" class="button-secondary"><span>Program</span></a></p>
							<p><a href="/" class="button-secondary"><span>Sponsorships</span></a></p>
							<p><a href="/" class="button-secondary"><span>Travel and Hotel</span></a></p>
							<p><a href="/" class="button-secondary"><span>Registration</span></a></p>
						</div>
					</div>
				</div>
				<div class="grey_circle lg" data-aos="fade-in" data-aos-duration="900"  data-aos-delay="1000" data-aos-once="true" data-aos-anchor=".image_circle"></div>
				<div class="grey_circle sm" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="0" data-aos-once="true"></div>
				<div class="grey_circle md" data-aos="fade-in" data-aos-duration="900" data-aos-delay="800" data-aos-once="true" data-aos-anchor=".image_circle"></div>
			</div>
		</div>
	</div>
	<div id="events">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="EventsPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="education">
		<div class="container">
			<div class="row no-margin">
				<div class="col-md-9">
					<div id="ContentPane" runat="Server"></div>
				</div>
				<div class="col-md-3">
					<div id="EduImagePane" runat="Server"></div>
				</div>
			</div>
			<div class="grey_circle edu" data-aos="fade-in" data-aos-duration="900" data-aos-delay="0" data-aos-once="true"></div>
		</div>	
	</div>
	<div id="testimonial">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="TestimonialPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>

</div>
</main>

<script>
AOS.init();

//Event Rotator Link	
$(".ms-slide").click(function(){
    window.location = $(this).attr("data-href");
   return false;
}); 	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->