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

// Start Point
path_add_point(path, x1, y1, 100);


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
path_add_point(path, x2, y2, 100);

// Apex
var apex = get_road_apex(x1, y1, x4, y4, dir_start, dir_end);
path_add_point(path, apex[0], apex[1], 100);
if (dir_start != dir_end) {
	path_add_point(path, apex[0], apex[1], 100);
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
path_add_point(path, x3, y3, 100);

// End Point
path_add_point(path, x4, y4, 100);

path_set_closed(path, false);
path_set_kind(path, 1);

return path;