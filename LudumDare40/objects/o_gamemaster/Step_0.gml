/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) ) {
	room_restart()
}

if (keyboard_check_pressed(vk_escape) ) {
	if(room == r_menu){
		game_end();	
	}else room_goto(r_menu);
}

if (keyboard_check_pressed(vk_enter) ) {
	global.level_started = true;
}

if(keyboard_check_pressed(vk_numpad8)){
	global.speed_modifier++;	
}else if(keyboard_check_pressed(vk_numpad2)){
	global.speed_modifier--;	
}


if(keyboard_check_pressed(vk_numpad6) ) {
	room_goto_next();
}
if(keyboard_check_pressed(vk_numpad4) ) {
	room_goto(room_last);
}

if(keyboard_check_pressed(vk_numpad5) ) {
	room_goto(working_level);
}

if(global.level_passed || global.level_failed){
	global.level_complete = true;	
}

if(global.cars_passed >= global.cars_total){
	global.level_passed = true;	
}

if(global.collision_count > 0){
	global.level_failed = true;	
}