function doAllTheGraph() {
    var pie = new d3pie("#pieChart", {
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
		"pieInnerRadius": "83%",
		"pieOuterRadius": "79%"
	},
	"data": {
		"sortOrder": "value-desc",
		"content": [
			{
				"label": "Selfies Taken",
				"value": 12,
				"color": "#f5c2c2"
			},
			{
				"label": "Different Plants",
				"value": 30,
				"color": "#f5c2cb"
			},
			{
				"label": "Graves",
				"value": 32,
				"color": "#f5c2d4"
			},
			{
				"label": "Animals Found",
				"value": 28,
				"color": "#f5c2de"
			},
			{
				"label": "Videos Taken",
				"value": 7,
				"color": "#f5c2e7"
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
			"color": "#828282",
			"font": "helvetica",
			"fontSize": 11
		},
		"percentage": {
			"color": "#ffffff",
			"font": "helvetica",
			"decimalPlaces": 0
		},
		"value": {
			"color": "#adadad",
			"font": "helvetica",
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

doAllTheGraph();


// two ways to do resizing - resize in place or change it all.
// resize in place: http://eyeseast.github.io/visible-data/2013/08/28/responsive-charts-with-d3/

// resize it all by removing and re-adding:

var resizeTimer;

$(window).resize( function() {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
        // Run code here, resizing has "stopped
        // blow it all away
        d3.selectAll("#pieChart svg").remove();
        doAllTheGraph();
  }, 250); // end timeout func
});

