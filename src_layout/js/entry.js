

// require("./lib/modernizr-custom.js");

/**
 * static includes
 *
 */

var jQuery 		= require("jquery");

var basic 		= require("./chunk/basic.js");



// var scrollTimer = require('./chunk/scrollTimer.js');
require("./chunk/autosize.js");
require('./chunk/offcanvas.js');




/**
 * load swipe if touch device
 *
 */
// if (Modernizr.touch) {
// 	//console.log("has touch");
// 	require.ensure([], function(require) {
//         var touchswipe = require('./chunk/touchswipe.js');
// 	}, 'touchswipe');
// }





/**
 * window.load
 *
 */
$( window ).load(function() {
    $('body').removeClass(' is-loading');
});