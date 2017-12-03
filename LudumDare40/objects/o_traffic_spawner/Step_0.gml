/// @description Insert description here
// You can write your code in this editor
if(global.level_started && !spawn_started){
	alarm[0] = initial_start_time;
	spawn_started = true;
}

if(set_repeat && !spawn_started){
	alarm[0] = initial_start_time;
	spawn_started = true;
}
	