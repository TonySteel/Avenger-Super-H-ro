function showOtherTitle() {
    var x = document.getElementsByClassName("titre-h");
    var i;
    for(i = 0; i < x.length; i++) {
        if (x[i].style.display === "block") {
            x[i].style.display = "none";
        } else {
            x[i].style.display = "block";
        }
    }
}

function fontPrompt() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Prompt-Regular';
    }
}

function fontMonoton() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Monoton';
    }
}

function fontDarling() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'AR DARLING';
    }
}

function fontMichroma() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Michroma';
    }
}

function fontShareTechMono() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'ShareTechMono-Regular';
    }
}

function fontSixCaps() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'SixCaps';
    }
}

function fontNovaMono() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'NovaMono';
    }
}

function fontPlay() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Play';
    }
}

function fontOrbitron() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Orbitron';
    }
}

function fontRighteous() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Righteous';
    }
}

function fontAudiowide() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Audiowide';
    }
}

function fontProstoOne() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'ProstoOne';
    }
}

function fontFasterOne() {
    var x = document.getElementsByClassName("font-choice");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'FasterOne';
    }
}

function fontParagrapheRibeye() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Ribeye-Regular';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheArial() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Arial';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheRibeye() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Ribeye-Regular';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheRoboto() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Roboto-Regular';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheAcme() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Acme';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheDidactGothic() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Didact-Gothic';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheGafata() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Gafata';
        x[i].style.fontSize = '1rem';
    }
}

function fontParagrapheGrandHotel() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Grand-Hotel';
        x[i].style.fontSize = '1.3rem';
    }
}

function fontParagrapheGruppo() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Gruppo';
        x[i].style.fontSize = '1.1rem';
    }
}

function fontParagraphePlay() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Play';
        x[i].style.fontSize = '1.1rem';
    }
}

function fontParagrapheOrbitron() {
    var x = document.getElementsByClassName("font-text");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontFamily = 'Orbitron';
        x[i].style.fontSize = '1.1rem';
    }
}

function paragraphFontChoice(selectTag) {
    var listValue = selectTag.options[selectTag.selectedIndex].text;
    console.log('Hurray')
    document.getElementById("myP").test.fontFamily = listValue;
}



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
            alert("Le service n'a pas répondu à temps");
            break;
    }
};





