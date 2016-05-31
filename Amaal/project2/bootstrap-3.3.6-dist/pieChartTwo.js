function doAllGraph() {
var pie = new d3pie("pieChartTwo", {
	"header": {
		"title": {
			"fontSize": 24,
			"font": "open sans"
		},
		"subtitle": {
			"color": "#999999",
			"fontSize": 12,
			"font": "open sans"
		},
		"titleSubtitlePadding": 9
	},
	"footer": {
		"color": "#999999",
		"fontSize": 10,
		"font": "open sans",
		"location": "bottom-left"
	},
	"size": {
		"canvasWidth": 590,
		"pieInnerRadius": "86%",
		"pieOuterRadius": "90%"
	},
	"data": {
		"sortOrder": "value-desc",
		"content": [
			{
				"label": "Videos",
				"value": 14,
				"color": "#f6e6e6"
			},
			{
				"label": "Selfies",
				"value": 10,
				"color": "#f0cbbd"
			},
			{
				"label": "Animals",
				"value": 23,
				"color": "#e6e6e6"
			}
		]
	},
	"labels": {
		"outer": {
			"pieDistance": 32
		},
		"inner": {
			"hideWhenLessThanPercentage": 3
		},
		"mainLabel": {
			"color": "#717171",
			"fontSize": 11
		},
		"percentage": {
			"color": "#ffffff",
			"decimalPlaces": 0
		},
		"value": {
			"color": "#adadad",
			"fontSize": 11
		},
		"lines": {
			"enabled": true
		},
		"truncation": {
			"enabled": true
		}
	},
	"effects": {
		"pullOutSegmentOnClick": {
			"effect": "linear",
			"speed": 400,
			"size": 8
		}
	},
	"misc": {
		"gradient": {
			"enabled": true,
			"percentage": 100
		}
	}
});
    
}


doAllGraph();


// two ways to do resizing - resize in place or change it all.
// resize in place: http://eyeseast.github.io/visible-data/2013/08/28/responsive-charts-with-d3/

// resize it all by removing and re-adding:

var resizeTimer;

$(window).resize( function() {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
        // Run code here, resizing has "stopped
        // blow it all away
        d3.selectAll("#pieChartTwo svg").remove();
        doAllGraph();
  }, 250); // end timeout func
});

