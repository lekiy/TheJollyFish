/// @description Insert description here
// You can write your code in this editor
image_angle = 90*-side;

direction = image_angle

if(!is_stopped){
	speed = move_speed;	
}else{
	speed = 0;	
}

is_stopped = false;
//mylane = true;

//Check for car ahead
if(place_meeting(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_car)){
		var lead_car = instance_place(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_car);
		if(lead_car.side == side){
			is_stopped = true;	
		}
}

//Check for Hazards
if(place_meeting(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_hazard)){
		var hazard = instance_place(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_hazard);
		if(hazard.side == side){
			mylane = false;
			/*if(anim_start_x == -1){
				anim_start_x = x;
				anim_start_y = y;
			}*/
			anim_dist_traveled += move_speed/2;
			anim_dist_traveled = min(anim_dist_traveled, 16);
			anim_angle = sin(degtorad((180/16)*anim_dist_traveled))*45;
		} else {
			mylane = true;
		}
}  else {
	mylane = true;
	if(anim_dist_traveled > 0){
		anim_dist_traveled -= move_speed/2;
		anim_dist_traveled = max(anim_dist_traveled, 0);
		anim_angle = sin(degtorad((180/16)*anim_dist_traveled))*-45;
	}
}

/*if(anim_dist_traveled > 0){
	//anim_dist_traveled = min(point_distance(x, y, anim_start_x, anim_start_y)/2, 16);
	anim_angle = sin(degtorad((180/16)*anim_dist_traveled))*45;
}
