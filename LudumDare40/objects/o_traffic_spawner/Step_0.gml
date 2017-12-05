/// @description Insert description here
// You can write your code in this editor

set_lane_side();

if(global.level_started && !spawn_started){
	repeat(count){
		var time = random_range(room_speed*rate, (room_speed*rate) + 0.7);
		ds_list_add(spawn_list, o_car);
		ds_list_add(spawn_time_list, time);
	}
	
	alarm[0] = initial_start_time;
	spawn_started = true;
}

if(set_repeat && !spawn_started){
	alarm[0] = initial_start_time;
	spawn_started = true;
}

