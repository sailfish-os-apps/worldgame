

var countries = { "Germany": [
        {"cont": "Europe", "cord": "MMA"},
        {"cont": "Europe", "cord": "MMC"}
    ],
    "France" : [
        {"cont" : "Europe", "cord": "WMD"},
        {"cont" : "Europe", "cord": "WSB"}
    ]
};

// Test function
//function getGermany() {
//    for (var i = 0; i < countries.Germany.length; ++i) {
//        console.debug("Germany - Europe - Coordinates:" + countries.Germany[i].cord)
//    }

//}

function checkCoordinates(checkType,checkName,continent,coordinates) {
    if (checkType === "countries") {
        console.debug("Countries length: " + countries[checkName].length)
        for (var i = 0; i < countries[checkName].length; ++i) {
            if (countries[checkName][i]["cont"] === continent) { console.debug("Continent Correct"); break }
            else {
                if (i == countries[checkName].length-1) { console.debug("Continent Wrong") ; return; }
            }
        }

        for (var i = 0; i < countries[checkName].length; ++i) {
            if (countries[checkName][i].cord === coordinates) { console.debug("Coordinates Correct"); break }
            else {
                if (i == countries[checkName].length-1) console.debug("Coordinates Wrong/Empty");
            }
        }
    }
}

