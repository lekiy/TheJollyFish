/// @description Insert description here
// You can write your code in this editor
global.collision_count = 0;
global.level_started = false;

enum roadside {
	right,
	left,
	up,
	down
}

#macro TILE_SIZE 32