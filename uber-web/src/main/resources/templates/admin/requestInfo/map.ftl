<script type="text/javascript">
    $(function(){
        initialize();
    });
    function initialize() {
        var map;
        var poly;
        var path;

        // Put all locations into array
        var locations = [
            [${dep_x!}, ${dep_y}],
            [${des_x!}, ${des_y!}]
        ];
        for (i = 0; i < locations.length; i++) {
            if(i==0)
            {
                // Initialise the map
                var map_options = {
                    center: new google.maps.LatLng(locations[0][0], locations[0][1]),
                    position: new google.maps.LatLng(locations[i][0], locations[i][1]),
                    zoom: 12,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                map = new google.maps.Map(document.getElementById('map'), map_options);
                poly = new google.maps.Polyline({
                    strokeColor: '#030303',
                    strokeOpacity: 2.0,
                    strokeWeight:2,
                    map:map
                });
                path = poly.getPath();
            }

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i][0], locations[i][1]),
                //center:location,
                map: map,
                // icon:'jeep.png'
                //animation:google.maps.Animation.BOUNCE
            });

            path.push(new google.maps.LatLng(locations[i][0], locations[i][1]));
        }

    }

</script>

<div id="map" style="margin:0px; padding:0px; width:100%; height:460px;" >
</div>