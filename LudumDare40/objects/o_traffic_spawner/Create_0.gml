/// @description Insert description here
// You can write your code in this editor
initial_start_time = room_speed*0.5;

spawn_started = false;
spawn_list = ds_list_create();
spawn_time_list = ds_list_create();

spawn_index = 0;
side = noone;

set_repeat = false;
repeat_interval = room_speed*0.8;

s_set_road_side();