<!DOCTYPE html>
<html>
  <head>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <style type="text/css">

      body,
      input, select, textarea {
        font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
      }

      h1, h2, h3, h4, h5, h6 {
        line-height: 1.1;
}

      /* BASE LAYOUT */


      input, select, textarea {
        background-color: #fcfcfc;
        border: 1px solid #cccccc;
        font-size: 1em;
        padding: 0.2em 0.4em;
      }

      textarea {
        width: 250px;
        height: 150px;
        overflow: auto; /* IE always renders vertical scrollbar without this */
        vertical-align: top;
      }

      input[type=text] {
        width: 420px;
      }

      html { height: 100%; width:100%;  }
      body { height: 100%; width:100%; margin: 0; padding: 0; background-color:black; }
      #map_canvas { height: 100% }

      .itemDiv2 {
        background-color: white;
        border: 3px solid white;
        margin: 5px 5px 5px;
        padding: 5px;
        float: left;
        -moz-box-shadow: 0px 0px 1em #ccc;
        -webkit-box-shadow: 0px 0px 1em #ccc;
        box-shadow: 0px 0px 20px white;
        -moz-border-radius: 0.3em;
        -webkit-border-radius: 0.3em;
        border-radius: 0.3em;

      }
      .searchInput { position: relative; left: 0px; top: 0px; right: 0px; z-index: 1000; }
      .opacity50 { opacity : 0.7 }
      .opacity100 { opacity : 1 }
    </style>
    <script type="text/javascript"
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAfuiCn9h-88DFhPuCenlxVDxcU9gksbFA&sensor=false">
    </script>
 
    <geolocation:resources/>
  </head>

  <body>
    <geolocation:locateMe/> 
    <div id="map_canvas" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; z-index: 0; ">

    </div>
    <div class="itemDiv2" style="position: relative; left: 50%; top: 50%; right: 0px; z-index: 1000 ; width: 500px; margin-left: -250px; margin-top: -70px ">
      <span class="searchInput"><b>Já chci&nbsp;</b></span>
      <span class="searchInput">
        <g:remoteField action="findItemsByLocation" before="removeAllMarkers()" update="itemContainer" name="title" length="65" value=""/>
      </span>
    </div>
    
    <div style="width:300px; height:100px; position:relative; margin: auto; margin-top: 50px ">  
      <g:render template="foundItemsByLocation" />
    </div>
      <script type="text/javascript">

      var markers = [];
      function removeAllMarkers() {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null); 
        }
          markers = [];
      }


      function addMarkers(points) {
        for ( i = 0; i < points.length; i++) {
          var point = points[i];
        if (window.guglMap && point.latitude && point.longitude) {
          pt = new google.maps.LatLng(point.latitude, point.longitude);
          var marker = new google.maps.Marker({position: pt, map: window.guglMap, title:point.title, animation: google.maps.Animation.BOUNCE, raiseOnDrag:false});
          markers.push(marker);
        }  

        }
    }

      function initialize() {

          latitude = null//${session.position?.coords?.latitude};
          longitude = null// ${session.position?.coords?.longitude};

          if (latitude == null) {
            latitude = 50.082481
          }

          if (longitude == null) {
            longitude = 14.413583
          }

          var point = new google.maps.LatLng(latitude, longitude);

          var geocoder = new google.maps.Geocoder();
          geocoder.geocode({'latLng': point }, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (results[0]) {
          alert(results[0].formatted_address);

        }
      } else {
        alert("Geocoder failed due to: " + status);
      }

    });

        var mapOptions = {

          center: new google.maps.LatLng(latitude,longitude),

          zoom: 13,
          mapTypeId: google.maps.MapTypeId.HYBRID,
          draggable: false, zoomControl: false, scrollwheel: false, disableDoubleClickZoom: true, streetViewControl:false, mapTypeControl:false, panControl:false,

         };
        window.guglMap = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
      }

      function fadeMap() {
        $( "div#map_canvas" ).addClass( "opacity50", 2000, "easeOutQuart" );
      }

      function unfadeMap() {
        $( "div#map_canvas" ).removeClass( "opacity50", 2000, "easeOutQuart" );
      }

      jQuery(window).load(function() {
        initialize();
        fadeMap();
      });
      </script> 
  </body>
</html>