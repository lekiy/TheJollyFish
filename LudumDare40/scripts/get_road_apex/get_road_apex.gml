///@arg x1
///@arg y1
///@arg x4
///@arg y4
///@arg dir_start
///@arg dir_end

var x1 = argument0;
var y1 = argument1;

var x2 = noone;
var y2 = noone;

var x3 = noone;
var y3 = noone;

var x4 = argument2;
var y4 = argument3;

var dir_start = argument4;
var dir_end = argument5;

// ┛ ┓ ┗ ┏

// Clock wise
if (dir_start == left && dir_end == up) { // ┗
	return [x4,y1];
} else if (dir_start == right && dir_end == down) { // ┓
	return [x4,y1];
} else if (dir_start == up && dir_end == right) { // ┏
	return [x1,y4];
} else if (dir_start == down && dir_end == left) { // ┛
	return [x1, y4];

// Counter clock-wise
} else if (dir_start == down && dir_end == right) { // ┗
	return [x1,y4];
} else if (dir_start == up && dir_end == left) { // ┓
	return [x1,y4];
} else if (dir_start == left && dir_end == down) { // ┏
	return [x4,y1];
} else if (dir_start == right && dir_end == up) { // ┛
	return [x4,y1];
} else { // All straight roads
	return [(x1 + x4)/2, (y1 + y4)/2];
}

