/// @description Insert description here
// You can write your code in this editor

if(!point_in_rectangle(x, y, -TILE_SIZE, -TILE_SIZE, room_width+TILE_SIZE, room_height+TILE_SIZE)){
	instance_destroy();
}

if(path == noone){
	path = create_path_from_coords(x, y, direction);
	path_start(path, move_speed, path_action_stop, true);
}
image_angle = direction;
