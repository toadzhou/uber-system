<script type="text/javascript">
    $(function(){
        initMap();
    });
    function initMap() {
        var myLatLng = {lat: ${lat!}, lng: ${lng!}};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12,
            center: myLatLng
        });
        var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: '${address}',
            icon:image
        });
    }

</script>

<div id="map" style="margin:0px; padding:0px; width:100%; height:260px;" >
</div>