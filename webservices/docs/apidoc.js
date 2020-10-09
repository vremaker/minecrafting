/**HTML For formatting the json responses in the api doc for the minecrafting simulator */
'use strict';


(function() {
  window.addEventListener('load', init);
  
  let redstone = { "name" : "Redstone Dust",
    "shortname": "redstone-dust",
    "description": "The redstone block has 16 * 3^4 = 1296 possible block state combinations, the highest of all blocks.",
    "crafts": [
    "clock",
    "compass"
    ]
    };

let first = 
    {
    "result": "acacia-planks",
    "one": null,
    "two": null,
    "three": null,
    "four": null,
    "five": "acacia-log",
    "six": null,
    "seven": null,
    "eight": null,
    "nine" : null
    };

    let mid =
        {
            "result": "blast-furnace",
            "one": "iron-ingot",
            "two": "iron-ingot",
            "three": "iron-ingot",
            "four": "iron-ingot",
            "five": "furnace",
            "six": "iron-ingot",
            "seven": "smooth-stone",
            "eight": "smooth-stone",
            "nine": "smooth-stone"
            };

    let end = {
        "result": "fishing-rod",
        "one": null,
        "two": null,
        "three": "stick",
        "four": null,
        "five": "stick",
        "six": "string",
        "seven": "stick",
        "eight": null,
        "nine": "string"
        };
  
  function init() {
    document.getElementById("redstone").innerHTML = JSON.stringify(redstone, undefined, 2);
    document.getElementById("start").innerHTML = JSON.stringify(first, undefined, 2).trim() + ",";
    document.getElementById("middle").innerHTML = JSON.stringify(mid, undefined, 2).trim() + ",";
    document.getElementById("last").innerHTML = JSON.stringify(end, undefined, 2).trim();
    document.getElementById("single").innerHTML = JSON.stringify(mid, undefined, 2).trim();
  
}
})();