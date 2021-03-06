/// @description Insert description here
// You can write your code in this editor
depth = -y;

var meet_car = false;
mylane = true;
var apply_breaks = false;

var CRASH_THRESHOLD = 30;

var x_ahead_long = x+lengthdir_x(TILE_SIZE, direction);
var y_ahead_long = y+lengthdir_y(TILE_SIZE, direction);
var x_ahead_medium = x+(lengthdir_x(TILE_SIZE / 2, direction));
var y_ahead_medium = y+(lengthdir_y(TILE_SIZE / 2, direction));
var x_ahead_short = x+(lengthdir_x(TILE_SIZE / 5, direction));
var y_ahead_short = y+(lengthdir_y(TILE_SIZE / 5, direction));

/** Collisions */
var meet_stoplight = (place_meeting(x_ahead_short, y_ahead_short, o_stopper)) ? true : false;
var meet_hazard = (place_meeting(x_ahead_long, y_ahead_long, o_hazard)) ? true : false


// Aproach car
if (place_meeting(x_ahead_medium, y_ahead_medium, o_car)) {
	var otherCar = instance_place(x_ahead_medium, y_ahead_medium, o_car);

	if (instance_exists(otherCar)) {
		var diff = direction - otherCar.direction;

		if(!(diff > CRASH_THRESHOLD || -CRASH_THRESHOLD > diff)) {
			apply_breaks = true;
		}
	}
}

// Meet Car
if (place_meeting(x_ahead_short, y_ahead_short, o_car)) {
	var otherCar = instance_place(x_ahead_short, y_ahead_short, o_car);

	if (instance_exists(otherCar)) {
		var diff = direction - otherCar.direction;

		if(!(diff > CRASH_THRESHOLD || -CRASH_THRESHOLD > diff)) {
			// Very close to car
			if (place_meeting(x_ahead_short, y_ahead_short, o_car)) {
				meet_car = true;
			}
		}
	}
}

// Collide with car
if (place_meeting(x, y, o_car)) {
	var otherCar = instance_place(x, y, o_car);
	var diff = direction - otherCar.direction;

	if(diff > CRASH_THRESHOLD || -CRASH_THRESHOLD > diff) {
		global.collision_count++;	
		create_car_fade_fx(sprite_index, image_index, x, y, image_angle, depth-1);
		create_car_fade_fx(otherCar.sprite_index, otherCar.image_index, otherCar.x, otherCar.y, otherCar.image_angle, otherCar.depth-1)
		instance_destroy();
		instance_destroy(otherCar);
		var crash_sfx = crash_sounds[irandom(3)];
		audio_sound_pitch(crash_sfx, 1+random_range(-0.1, 0.1));
		audio_play_sound(crash_sfx, 2, false);
		set_screen_shake(5, room_speed*0.5);
	}
}


/* Main path logic */
is_stopped = meet_stoplight || meet_car;
mylane = !meet_hazard;

if(path == noone){
	//path = create_path_from_coords(x, y, direction, mylane);
	path = create_path_to_next_road(mylane);
	path_start(path, move_speed*global.speed_modifier, path_action_stop, true);
}

path_speed = (is_stopped) ? 0 : move_speed*global.speed_modifier;
path_speed = (apply_breaks) ? path_speed / 2 : path_speed;

image_angle = direction;


/* Kill old cars if off canvas */
if(point_in_rectangle(x, y, 0, 0, room_width, room_height)){
	has_entered = true;	
}

if(has_entered){
	if(!point_in_rectangle(x, y, -TILE_SIZE, -TILE_SIZE, room_width+TILE_SIZE, room_height+TILE_SIZE)){
		global.cars_passed++;
		instance_destroy();
	}
}