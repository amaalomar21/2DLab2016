console.log(L);

var mymap = L.map('mapid').setView([61.505, -0.09], 8);

console.log(mymap);

L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/dark-v8/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18,
    id: 'cassieldotcom.lbo5g01j',
    accessToken: 'pk.eyJ1IjoiY2Fzc2llbGRvdGNvbSIsImEiOiJfOXlpQmFJIn0.W5qn7J_RcOV8502RXsDc3Q'
}).addTo(mymap);

//
// made this a function to show how that works
//
function jsonFunc(data, success) {
    
    console.log(success);
    
    for (var i = 0; i < data.length; i++) {
        console.log(data[i].position);
        var pos = data[i].position;
        L.marker(pos).addTo(mymap).bindPopup(
            '<img src = "' + data[i].img + '"width = "200px" />');
    }
}




var myData = [

    {"name": "CEntrance", 
     "position": [51.5256, -0.1224],
     "img": 'images/coramsEntrance.JPG'
    },
    
    
    {"name": "gravecloseup", 
     "position": [51.5259, -0.1216],
     "img": 'images/gravecloseup.JPG'
    
    },
    
    {"name": "greenOne", 
     "position": [51.5265, -0.1204],
     "img": 'images/greenOne.JPG'
    
    }
    
]


jsonFunc(myData);