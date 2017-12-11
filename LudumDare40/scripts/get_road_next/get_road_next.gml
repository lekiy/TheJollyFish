///@arg ourRoad
///@arg direction
// Relative to the tile, get the next tile in a given direction

var ourRoad = argument0;
var in_direction = argument1;

var xx = ourRoad.x;
var yy = ourRoad.y;

switch(in_direction) {
	case left:
		xx = ourRoad.x - TILE_SIZE break;
	case right :
		xx = ourRoad.x + TILE_SIZE break;
	case up:
		yy = ourRoad.y - TILE_SIZE break;
	case down :
		yy = ourRoad.y + TILE_SIZE break;
}

// Return next road. Could be -4 if there is no road.
return instance_position(xx, yy, o_road_base);