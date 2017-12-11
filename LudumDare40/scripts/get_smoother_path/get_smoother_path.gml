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


// 12 points caclulated using
// function (t) { return t*t*t*t }
// Using [1-12] / 12
var easeIn = [
	0.0000,
	0.0007,
	0.0039,
	0.0123,
	0.0301,
	0.0625,
	0.1157,
	0.1975,
	0.3164,
	0.4822,
	0.7060,
	1
];


// 12 points caclulated using
// function (t) { return 1-(--t)*t*t*t }
// Using [1-12] / 12
var easeOut = [
	0.2939,
	0.5177,
	0.6835,
	0.8024,
	0.8842,
	0.9375,
	0.9698,
	0.9876,
	0.9960,
	0.9992,
	0.9999,
	1
];

var xdiff = x1 - x4;
var ydiff = y1 - y4;

var points = [];

// Create x
{
var i;
for (i = 0; i < 6; i += 1)
   {
		points[i]= [
			x4 + (xdiff * easeIn[i*2]),
			y4 + (ydiff * easeOut[i*2])
		];
		
		path_add_point(path, x4 + (xdiff * easeIn[i]), y4 + (ydiff * easeOut[i]), 100);
   }
}

return path;