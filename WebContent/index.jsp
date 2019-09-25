<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
	<jsp:param name="title" value="CD2H SciTS" />
</jsp:include>

<link href="https://fonts.googleapis.com/css?family=Bad+Script&display=swap" rel="stylesheet">
<style type="text/css" media="all">
@import "resources/layout.css";

.index-icon {
	text-align: center;
	color: grey;
	opacity: 0.7;
}

.carousel-control-prev-icon {
    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E");
}

.carousel-control-next-icon {
    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E");
}

.section{
	padding-top: 5px;
	padding-top: 10px;
}

h3{
	padding-bottom: 20px;
}

.ml12, .ml13, .ml14{
  font-weight: 200;
  font-size: 1.5em;
  text-transform: uppercase;
  letter-spacing: 0.5em;
  padding-bottom: 10px;
}

.ml12 .letter, .ml13 .letter, .ml14 .letter{
  display: inline-block;
  line-height: 1em;
}

.card{
	background-color: transparent;
	background-image: linear-gradient(to bottom right, white, #dbdbdb);
	margin-bottom: 10px;
	max-width: 350px;
	min-width: 300px;
	margin-right: 5px;
	margin-left: 5px;
}

.custom-card .card:hover{
	transform: scale(1.05);
}

.custom-card{
	text-decoration:none!important;
}

.card-title{
	color: #172859 !important;
}

.card-text{
	color: black;
	padding:0;
	font-size:10pt;
}


.heading{
	font-weight: 500;
  	font-size: 1.5em;
  	text-transform: uppercase;
  	letter-spacing: 0.2em;
}

p a{
	color: #5ca4ad;
}




</style>
<script src="resources/anime.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js""></script>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="header.jsp" flush="true" />

	<div class="container pl-0 pr-0 pt-0">
		<div class="container-fluid mt-4">
			<img src="images/scits_logo_prof.png" class="img-fluid" alt="Responsive image" style="max-width:400px; padding-bottom:10px;"><br>
			<p style="font-weight:150; font-size:11pt;">Scientific organizations expend substantial effort maintaining local databases of effectively the same data - people, publications, grants, etc.
			The Science of Translational Science Research Platform <b>(SciTS)</b> seeks to streamline this process by performing large-scale data integration 
			from a <a href="#data-sources">large variety of hand-curated sources</a> intended to meet your diverse information needs. Our users can query and
			 explore the underlying data from a variety of tailored interfaces, and CTSA Hubs can connect directly to the data that 
			matters most to them using our many targeted widgets. <a href="#uses_start">Think of us as your personal resource concierge.</a>
		</div>
	</div>
	
	<div style="background-image: linear-gradient(#fafafa, white); border-top:1px solid black; border-bottom:1px solid black;">
		<div class="section" style="padding-bottom:0; padding-top:15px;">
			<h3 class="ml13" style="text-align: center;">Example Use Cases:</h3>
			<div id="carouselExampleControls" class="carousel slide p-0" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-75 mx-auto" src="images/scits_gov.png" alt="SciTS use case: clinical trials">
					</div>
					<div class="carousel-item">
						<img class="d-block w-75 mx-auto" src="images/scits_redcap.png" alt="SciTS use case: software">
					</div>
					<div class="carousel-item">
						<img class="d-block w-75 mx-auto" src="images/scits_edu.png" alt="SciTS use case: educational">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	
	
	<div class="section" id="uses_start" style="background-image: linear-gradient(to bottom right, #2f3336,#262a2e, black); padding-bottom: 30px;">
		<div class="container pl-0 pr-0 pt-0">
			<div class="container-fluid mt-4" style="text-align: center;">
				<h3 class="ml12" style="color: white;">SciTS Tools:</h3>
				<div class="row justify-content-center custom_cards">
					<div class="col-auto-4">
						<a href="http://labs.cd2h.org/search" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">CTSAsearch</h5>
			      					<p class="card-text">Utilize our faceted interface to search against multiple data-types and sources across the CTSA Consortium (and beyond!).</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="http://labs.cd2h.org/gitforager/" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">gitForager</h5>
			      					<p class="card-text">Browse and explore our curated list of CTSA-relevant content extracted from GitHub.<br><br></p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="http://labs.cd2h.org/analytics/incite/browse.jsp" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">CTSA Web Search</h5>
			      					<p class="card-text">Search for people, resources, and keywords across the data we've collected from CTSA Consortium Websites.</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="http://labs.cd2h.org/scits/apis.jsp" class="custom-card">
		  					<div class="card"\>
			    				<div class="card-body">
			      					<h5 class="card-title">SciTS APIs</h5>
			      					<p class="card-text">Explore, access, and ingest our underlying data. Not sure what to look for? Check out some examples of the queries you can perform.</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="<util:applicationRoot/>/tableau/tableau.jsp" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">Tableau Integration</h5>
			      					<p class="card-text">Discover the demographics of areas surrounding the CTSA Hubs and get inspired to create your own information visualizations with our data!</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="http://labs.cd2h.org/viva/" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">Viva</h5>
			      					<p class="card-text">Learn more about people and the resources they create by utilizing our application blending VIVO-compliant data with multiple external content.</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
		 				<a href="http://labs.cd2h.org/acknowledgments/" class="custom-card">
		  					<div class="card">
			    				<div class="card-body">
			      					<h5 class="card-title">Acknowledgements</h5>
			      					<p class="card-text">Search and browse information within the acknowledgement sections of papers contained in PubMed Central.</p>
			    				</div>
		 					</div>
		 				</a>
	 				</div>
	 				<div class="col-auto-4">
	  					<div class="card">
		    				<div class="card-body">
		      					<h5 class="card-title">Your Tool Here</h5>
		      					<p class="card-text">Don't see the tool you are looking for? <a href="https://github.com/data2health/cd2h-scits">Contact</a> us and let us help you make the most out of our data. Seriously, we would love to hear from <u>you!</u></p>
		    				</div>
	 					</div>
	 				</div>
 				</div>
								
	
			</div>
		</div>
	</div>
		
	<div class="container pl-0 pr-0 pt-0" id="data-sources">
		<div class="container-fluid mt-4">
			<div class="section" id="sources_start">
				<h3 class="ml14" style="text-align: center;">Data Sources:</h3>
				<div style="text-align:center;">
					<img src="images/idemap.png" style="width: 90%" class="img-fluid mx-auto" alt="data sources" >
				</div>
			</div>
				
		</div>
	</div>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>

<script>
$('.carousel').carousel({
	  interval: false
})


var textWrapper_one = document.querySelector('.ml13');
textWrapper_one.innerHTML = textWrapper_one.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: false})
.add({
	targets: '.ml13 .letter',
	translateX: [40,0],
	translateZ: 0,
	opacity: [0,1],
	easing: "easeOutExpo",
	duration: 1600
});


var textWrapper_two = document.querySelector('.ml12');
textWrapper_two.innerHTML = textWrapper_two.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: false})
	.add({
		targets: '.ml12 .letter',
		translateX: [40,0],
		translateZ: 0,
		opacity: [0,0],
		easing: "easeOutExpo",
		duration: 0,
		delay: (el, i) => 500 + 30 * i
});

var textWrapper_three = document.querySelector('.ml14');
textWrapper_three.innerHTML = textWrapper_three.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: false})
	.add({
		targets: '.ml14 .letter',
		translateX: [40,0],
		translateZ: 0,
		opacity: [0,0],
		easing: "easeOutExpo",
		duration: 0,
		delay: (el, i) => 500 + 30 * i
});



var uses = 0;
var sources = 0;

function uses_animation(area){
	if (uses == 0){
		anime.timeline({loop: false})
			.add({
	  		targets: '.ml12 .letter',
	  		translateX: [40,0],
	  		translateZ: 0,
	  		opacity: [0,1],
	  		easing: "easeOutExpo",
	  		duration: 1200
		});
		uses += 1;
	}else if (sources == 0){
		anime.timeline({loop: false})
			.add({
	  		targets: '.ml14 .letter',
	  		translateX: [40,0],
	  		translateZ: 0,
	  		opacity: [0,1],
	  		easing: "easeOutExpo",
	  		duration: 1200
		});
		sources += 1;
	};
};

$(window).on('scroll', function() { 
    if (($(window).scrollTop() >= $('#uses_start').offset().top + $('#uses_start').outerHeight() - window.innerHeight) && (uses==0)){ 
    	uses_animation('uses'); 
    };
   	if (($(window).scrollTop() >= ($('#sources_start').offset().top + $('#sources_start').outerHeight() - window.innerHeight)-200) && (sources==0)) { 
   		uses_animation('sources'); 
   	};
}); 
	

</script>
</html>
