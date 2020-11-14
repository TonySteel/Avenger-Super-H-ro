var previousPosition = null;

function initialize()
{
    map = new google.maps.Map(document.getElementById("map_canvas"),
        {
            zoom: 10,
            center: new google.maps.LatLng(49.4431, 1.0993),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
}

if (navigator.geolocation)
    var watchId = navigator.geolocation.watchPosition(successCallback,
        errorCallback,
        {enableHighAccuracy:true,
            timeout:10000,
            maximumAge:0});
else
    alert("Votre navigateur ne prend pas en compte la géolocalisation HTML5");


function stopWatch()
{
    navigator.geolocation.clearWatch(watchId);
}


function successCallback(position)
{
    document.getElementById("lat").innerHTML = position.coords.latitude;
    document.getElementById("long").innerHTML = position.coords.longitude;
    document.getElementById("prec").innerHTML = position.coords.accuracy;
    document.getElementById("time").innerHTML = new Date(position.timestamp);

    map.panTo(new google.maps.LatLng(position.coords.latitude, position.coords.longitude));
    var marker = new google.maps.Marker(
        {
            position: new google.maps.LatLng(position.coords.latitude, position.coords.longitude),
            map: map
        });

    if (previousPosition)
    {
        var newLineCoordinates = [
            new google.maps.LatLng(previousPosition.coords.latitude, previousPosition.coords.longitude),
            new google.maps.LatLng(position.coords.latitude, position.coords.longitude)];

        var newLine = new google.maps.Polyline(
            {
                path: newLineCoordinates,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 2
            });
        newLine.setMap(map);
    }
    previousPosition = position;
}

function errorCallback(error){
    switch(error.code){
        case error.PERMISSION_DENIED:
            alert("L'utilisateur n'a pas autorisé l'accès à sa position");
            break;
        case error.POSITION_UNAVAILABLE:
            alert("L'emplacement de l'utilisateur n'a pas pu être déterminé");
            break;
        case error.TIMEOUT:
            /*alert("Le service n'a pas répondu à temps");*/
            break;
    }
};
