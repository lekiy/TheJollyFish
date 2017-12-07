///@arg road
///@arg dir_index
///@arg mylane

/**
	Given a road, direction of travel, and if we are in our lane
	Return the pixel location of the start of the next tile
	
	Think of this as: What pixel should the car enter/start on for a new tile.
*/

var road = argument0;
var dir_index = argument1;
var mylane = argument2;

var LANE_OFFSET = TILE_SIZE / 4;

var xx;
var yy;

if (mylane) {
	// ◻◻
	// ◧◻
	if (dir_index == right) {
		return [road.bbox_left, road.bbox_bottom - LANE_OFFSET];
	}
	// ◻◨
	// ◻◻
	if (dir_index == left) {
		return [road.bbox_right, road.bbox_top + LANE_OFFSET];
	}
	// ◻◻
	// ◻⬓
	if (dir_index == up) {
		return [road.bbox_right - LANE_OFFSET, road.bbox_bottom];
	}
	// ⬒◻
	// ◻◻
	if (dir_index == down) {
		return [road.bbox_left + LANE_OFFSET, road.bbox_top];
	}
} else {
	// ◧◻
	// ◻◻
	if (dir_index == right) {
		return [road.bbox_left, road.bbox_top - LANE_OFFSET];
	}
	// ◻◻
	// ◻◨
	if (dir_index == left) {
		return [road.bbox_right, road.bbox_bottom + LANE_OFFSET];
	}
	// ◻◻
	// ⬓◻
	if (dir_index == up) {
		return [road.bbox_left + LANE_OFFSET, road.bbox_bottom];
	}
	// ◻⬒
	// ◻◻
	if (dir_index == down) {
		return [road.bbox_right - LANE_OFFSET, road.bbox_top];
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