/// @description Insert description here
// You can write your code in this editor

if(spawn_index < ds_list_size(spawn_list)){
	var spawn = instance_create_layer(x+TILE_SIZE/4, y, "Instances", spawn_list[| spawn_index]);
	spawn.side = side;

	alarm[0] = spawn_time_list[| spawn_index];
	spawn_index++;
}