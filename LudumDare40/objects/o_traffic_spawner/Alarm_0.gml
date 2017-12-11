/// @description Insert description here
// You can write your code in this editor
var road = instance_place(x, y, o_road_base);
var dir = get_lane_direction_degrees(road);
var dir_index = get_lane_direction(road);

if(set_repeat){
	if (!place_meeting(x, y, o_car)) {
		var spawn = instance_create_layer(x, y, "Instances", o_car);
		spawn.direction = dir;
	}
	alarm[0] = repeat_interval;
}else{
	if(spawn_index < ds_list_size(spawn_list)){
		var coords = get_road_real_edge(road,dir_index,true,false);
		var spawn = instance_create_layer(coords[0], coords[1], "Instances", spawn_list[| spawn_index]);
		spawn.direction = dir;
		alarm[0] = spawn_time_list[| spawn_index];
		spawn_index++;
	
		//show_debug_message("spawned");
	}
	global.cars_spawned++;
}