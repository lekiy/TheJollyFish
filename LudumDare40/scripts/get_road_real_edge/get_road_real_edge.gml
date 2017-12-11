///@arg road
///@arg dir_index
///@arg mylane
///@arg exiting

/**
	Given a road, direction of travel, and if we are in our lane
	Return the pixel location of the start of the next tile
	
	Think of this as: What pixel should the car enter/start on for a new tile.
*/

var road = argument0;
var dir_index = argument1;
var mylane = argument2;
var exiting = argument3;

var LANE_OFFSET = TILE_SIZE / 4;

var xx;
var yy;


var yMap = [];
	// ⬒◻
	// ◻◻
yMap[top, left] = [road.bbox_left + LANE_OFFSET, road.bbox_top];
	// ◻⬒
	// ◻◻
yMap[top, right] = [road.bbox_right - LANE_OFFSET, road.bbox_top];
	// ◻◨
	// ◻◻
yMap[right, top] = [road.bbox_right, road.bbox_top + LANE_OFFSET];
	// ◻◻
	// ◻◨
yMap[right, bottom] = [road.bbox_right, road.bbox_bottom - LANE_OFFSET];
	// ◻◻
	// ⬓◻
yMap[bottom, left] = [road.bbox_left + LANE_OFFSET, road.bbox_bottom];
	// ◻◻
	// ◻⬓
yMap[bottom, right] = [road.bbox_right - LANE_OFFSET, road.bbox_bottom];
	// ◧◻
	// ◻◻
yMap[left, top] = [road.bbox_left, road.bbox_top + LANE_OFFSET];
	// ◻◻
	// ◧◻
yMap[left, bottom] = [road.bbox_left, road.bbox_bottom - LANE_OFFSET];


if (!mylane) {
	// ◧◻
	// ◻◻
	if (dir_index == right) {
		return yMap[left, top];
	}
	// ◻◻
	// ◻◨
	if (dir_index == left) {
		return yMap[right, bottom];
	}
	// ◻◻
	// ⬓◻
	if (dir_index == up) {
		return yMap[bottom, left];
	}
	// ◻⬒
	// ◻◻
	if (dir_index == down) {
		return yMap[top, right];
	}
} else if (exiting) {
	// ◧◻
	// ◻◻
	if (dir_index == left) {
		return yMap[left, top];
	}
	// ◻◻
	// ◻◨
	if (dir_index == right) {
		return yMap[right, bottom];
	}
	// ◻◻
	// ⬓◻
	if (dir_index == down) {
		return yMap[bottom, left];
	}
	// ◻⬒
	// ◻◻
	if (dir_index == up) {
		return yMap[top, right];
	}
} else {
	// ◻◻
	// ◧◻
	if (dir_index == right) {
		return yMap[left, bottom];
	}
	// ◻◨
	// ◻◻
	if (dir_index == left) {
		return yMap[right, top];
	}
	// ◻◻
	// ◻⬓
	if (dir_index == up) {
		return yMap[bottom, right];
	}
	// ⬒◻
	// ◻◻
	if (dir_index == down) {
		return yMap[top, left];
	}
}




/**
// solve x
if (dir_index == 0)
	xx = road.bbox_left;
if (dir_index == 2)
	xx = road.bbox_right;
if (dir_index == 1)
	xx = road.bbox_right - LANE_OFFSET;
if (dir_index == 3)
	xx = road.bbox_left + LANE_OFFSET;
	
// solve y
if (dir_index == 0)
	yy = road.bbox_bottom + LANE_OFFSET;
if (dir_index == 2)
	yy = road.bbox_top - LANE_OFFSET;
if (dir_index == 1)
	yy = road.bbox_bottom;
if (dir_index == 3)
	yy = road.bbox_top;
**/



//return [xx, yy];


/*


road.bbox_left + LANE_OFFSET;

road.bbox_right - LANE_OFFSET;

road.bbox_top + LANE_OFFSET;

road.bbox_bottom - LANE_OFFSET;


xmap[left, up] = road.bbox_left;
xmap[left, down] = road.bbox_left;
xmap[right, up] = road.bbox_right;
xmap[right, down] = road.bbox_right;

xmap[left, up] = road.bbox_left;
xmap[left, down] = road.bbox_left;
xmap[left, up] = road.bbox_left;
xmap[left, down] = road.bbox_left;

// solve x
switch (dir_index) {
	case right:
	case left:
		xx = ;
	case down:
}



// solve y
switch (dir_index) {
	case right:
		yy = road.bbox_top + LANE_OFFSET;
	case down:
}

*/