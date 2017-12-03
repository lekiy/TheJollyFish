/// @description Insert description here
// You can write your code in this editor
global.collision_count = 0;
global.level_started = false;

// 0 right
// 2 left
// 1 up
// 3 down

enum roadside {
	rright,
	rleft,
	rup,
	rdown
}

#macro TILE_SIZE 40
