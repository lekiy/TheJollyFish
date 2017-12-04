/// @description Insert description here
// You can write your code in this editor

//set_my_side();

/** Collisions */
is_stopped = (place_meeting(x, y, o_stopper)) ? true : false;
mylane = (!place_meeting(x, y, o_hazard)) ? true : false;

/* Main path logic */
if(path == noone){
	path = create_path_from_coords(x, y, direction, mylane);
	path_start(path, move_speed, path_action_stop, true);
}

path_speed = (is_stopped) ? 0 : move_speed;
image_angle = direction;


/* Kill old cars if off canvas */
if(!point_in_rectangle(x, y, -TILE_SIZE, -TILE_SIZE, room_width+TILE_SIZE, room_height+TILE_SIZE)){
	instance_destroy();
}