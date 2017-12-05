/// @description Insert description here
// You can write your code in this editor
global.collision_count = 0;
global.level_started = false;
global.cars_spawned = 0;
global.cars_passed = 0;
global.cars_total = 0;
global.level_complete = false;
global.level_failed = false;
global.level_passed = false;
global.speed_modifier = 1;

global.camera = instance_create_layer(0, 0, "Instances", o_camera);

global.cursor_is_on_clickable = false;
//working_level = r_lvl_7;

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

if(room != r_menu){
	instance_create_layer(0,0,"Instances", o_game_menu);	
}

display_set_gui_size(480, 360);