<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  
    <title>Places Searchbox</title>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLinprrX_SNCWBj_mQSXHuwSdp3ejr9us&libraries=places&callback=regular_map" async defer></script> 
    <script type="text/javascript">
    function regular_map() {
	    var var_location = new google.maps.LatLng(40.725118, -73.997699);

	    var var_mapoptions = {
	        center: var_location,
	        zoom: 14
	    };

	    var var_map = new google.maps.Map(document.getElementById("map-container-7"),
	        var_mapoptions);

	    var var_marker = new google.maps.Marker({
	        position: var_location,
	        map: var_map,
	        title: "New York"
	    });
	}

	google.maps.event.addDomListener(window, 'load', regular_map);
    </script>
  </head>
  <body>
  <section class="section pb-5">

    <div class="row">

        

        <!--Grid column-->
        <div class="col-lg-7">

            <!--Google map-->
            
            <div id="map-container-7" class="z-depth-1-half map-container" style="height: 400px"></div>

            <br>
            <!--Buttons-->
            <div class="row text-center">
                <div class="col-md-4">
                    <a class="btn-floating blue accent-1"><i class="fa fa-map-marker"></i></a>
                    <p>San Francisco, CA 94126</p>
                    <p>United States</p>
                </div>

                <div class="col-md-4">
                    <a class="btn-floating blue accent-1"><i class="fa fa-phone"></i></a>
                    <p>+ 01 234 567 89</p>
                    <p>Mon - Fri, 8:00-22:00</p>
                </div>

                <div class="col-md-4">
                    <a class="btn-floating blue accent-1"><i class="fa fa-envelope"></i></a>
                    <p>info@gmail.com</p>
                    <p>sale@gmail.com</p>
                </div>
            </div>

        </div>
       <!--Grid column-->

    </div>

</section>
  </body>
</html>