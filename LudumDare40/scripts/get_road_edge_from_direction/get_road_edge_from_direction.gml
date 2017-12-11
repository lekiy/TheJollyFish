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




if (mylane) {
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
} else {
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
}

