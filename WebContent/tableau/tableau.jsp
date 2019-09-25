<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="SciTS Tableau" />
</jsp:include>
<style type="text/css" media="all">
@import "resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="../header.jsp" flush="true" />

			<div class="container pl-0 pr-0 pt-3">
				<h2>SciTS Tableau Integration</h2>
				<p>Explore county-level demographics of the CTSA Hubs and find out which Hub's characteristics best match your study's recruitment criteria.
				Filter the map based on 2017 Census data, search for and highlight Hubs by name, and utilize the dropdown menu to select your detail-oriented view.
				Hover on a node to view details and update the supplemental visualizations. Once you have a hub in mind, click to navigate to their respective website.</p>
				<br>
			</div>
			
			<div class='tableauPlaceholder' id='viz1569401270425' style='position: relative; margin: auto; width: 100%;'>
				<noscript>
					<a href='#'>
						<img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;ct&#47;ctsa_by_demographics&#47;Dashboard1&#47;1_rss.png' style='border: none'/>
					</a>
				</noscript>
					<object class='tableauViz'  style='display:none;'>
					<param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F'/>
					<param name='embed_code_version' value='3'/>
					<param name='path' value='views&#47;ctsa_by_demographics&#47;Dashboard1?:embed=y&amp;:display_count=y'/>
					<param name='toolbar' value='yes'/>
					<param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;ct&#47;ctsa_by_demographics&#47;Dashboard1&#47;1.png'/>
					<param name='animate_transition' value='yes'/>
					<param name='display_static_image' value='yes'/>
					<param name='display_spinner' value='yes'/>
					<param name='display_overlay' value='yes'/>
					<param name='display_count' value='yes'/>
				</object>
			</div>
			<script type='text/javascript'>
				var divElement = document.getElementById('viz1569401270425');
				var vizElement = divElement.getElementsByTagName('object')[0];
				if (divElement.offsetWidth > 800){
					vizElement.style.width='1000px';vizElement.style.height='827px';
				} else if (divElement.offsetWidth > 500){
					vizElement.style.width='1000px';vizElement.style.height='827px';
				} else {
					vizElement.style.width='100%';vizElement.style.height='2277px';}
				var scriptElement = document.createElement('script');
				scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';
				vizElement.parentNode.insertBefore(scriptElement, vizElement);
			</script>
	<jsp:include page="../footer.jsp" flush="true" />
</body>

</html>
