/// @description Insert description here
// You can write your code in this editor

if(!point_in_rectangle(x, y, -100, -100, room_width+100, room_height+100)){
	instance_destroy();
}

if(path == noone){
	path = create_path_from_coords(x, y, direction);
	path_start(path, move_speed, path_action_stop, true);
}
image_angle = direction;
