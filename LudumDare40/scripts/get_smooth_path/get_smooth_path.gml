///@arg path
///@arg x1
///@arg y1
///@arg x4
///@arg y4
///@arg dir_start
///@arg dir_end

var path = argument0;

var x1 = argument1;
var y1 = argument2;

var x2 = noone;
var y2 = noone;

var x3 = noone;
var y3 = noone;

var x4 = argument3;
var y4 = argument4;

var dir_start = argument5;
var dir_end = argument6;

var SMOOTH_OFFSET = 5;


// Defaulting values
x2 = x1;
y2 = y1

x3 = x4;
y3 = y4;

// Start point smoothing
switch(dir_start) {
	case right:
		x2 = x1 + SMOOTH_OFFSET; break;
	case left:
		x2 = x1 - SMOOTH_OFFSET; break;
	case up:
		y2 = y1 - SMOOTH_OFFSET; break;
	case down:
		y2 = y1 + SMOOTH_OFFSET; break;
}

// End point smoothing
switch(dir_end) {
	case right:
		x3 = x4 - SMOOTH_OFFSET; break;
	case left:
		x3 = x4 + SMOOTH_OFFSET; break;
	case up:
		y3 = y4 + SMOOTH_OFFSET; break;
	case down:
		y3 = y4 - SMOOTH_OFFSET; break;
}


path_add_point(path, x1, y1, 100);
path_add_point(path, x2, y2, 100);


// Midpoint
var xmid2 = (x2 + x3)/2;
var ymid2 = (y2 + y3)/2;

var xmid1 = xmid2;
var ymid1 = ymid2;

// End point smoothing
switch(dir_end) {
	case right:
		xmid1 = xmid2 - SMOOTH_OFFSET; break;
	case left:
		xmid1 = xmid2 + SMOOTH_OFFSET; break;
	case up:
		ymid1 = ymid2 + SMOOTH_OFFSET; break;
	case down:
		ymid1 = ymid2 - SMOOTH_OFFSET; break;
}

//var xmid3 = xmid2;
//var ymid3 = ymid2;

// Start point smoothing
/* switch(dir_start) {
	case right:
		xmid3 = xmid2 + SMOOTH_OFFSET; break;
	case left:
		xmid3 = xmid2 - SMOOTH_OFFSET; break;
	case up:
		ymid3 = ymid2 - SMOOTH_OFFSET; break;
	case down:
		ymid3 = ymid2 + SMOOTH_OFFSET; break;
} */


path_add_point(path, xmid1, ymid1, 100);
//path_add_point(path, xmid2, ymid2, 100);
//path_add_point(path, xmid3, ymid3, 100);
//path_add_point(path, , (y2 + y3)/2, 100);
path_add_point(path, x3, y3, 100);
path_add_point(path, x4, y4, 100);

return path;