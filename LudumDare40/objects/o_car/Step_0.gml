/// @description Insert description here
// You can write your code in this editor
var meet_car = false;

var x_ahead = x+lengthdir_x(TILE_SIZE, direction);
var y_ahead = y+lengthdir_y(TILE_SIZE, direction);

var x_ahead_short = x+(lengthdir_x(TILE_SIZE, direction) / 3);
var y_ahead_short = y+(lengthdir_y(TILE_SIZE, direction) / 3);


/** Collisions */
var meet_stoplight = (place_meeting(x_ahead_short, y_ahead_short, o_stopper)) ? true : false;

mylane = (!place_meeting(x_ahead, y_ahead, o_hazard)) ? true : false;

if (place_meeting(x_ahead_short, y_ahead_short, o_car)) {
	var otherCar = instance_place(x_ahead_short, y_ahead_short, o_car);
	var diff = direction - otherCar.direction;

	if(diff > 50 || -50 > diff) {
		global.collision_count++;	
		instance_destroy();
		instance_destroy(otherCar);
		//audio_play_sound(a_crash1, 3, false);
	} else {
		meet_car = true;
	}
}

is_stopped = meet_stoplight || meet_car;

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