/// @description Insert description here
// You can write your code in this editor

/*
image_angle = 0;
{
switch (side)
	{
	case roadside.right: //Moving up
		image_angle = 90;
		break;
	case roadside.down:
		image_angle = 0; //Moving right
		break;
	case roadside.left:
		image_angle = 270; //moving down
		break;
	case roadside.up:
		image_angle = 180; //moving left
		break;
	}
}
*/

if(path_index == -1){
	get_path();	
}
image_angle = direction;
/*
direction = image_angle;

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
var hazard_check_dist = TILE_SIZE/2;

/*var new_road = instance_place(x, y, o_road_base);
if(new_road != old_road && new_road != noone){
	if(new_road.current_type == road_type.curved){
		turning = true;
		old_road = new_road;
	}

}

if(turning){		
	switch(direction/90){
		case 1: 
			if(y < new_road.y){
				side = roadside.up;
				y = new_road.y-TILE_SIZE/4;
				x = new_road.x-TILE_SIZE/4;
				turning = false;
			}
		case 2: 
			if(x < new_road.x){
				side = roadside.left;
				y = new_road.y+TILE_SIZE/4;
				x = new_road.x-TILE_SIZE/4;
				turning = false;
			}
		break;	
	}		
}else*
if(place_meeting(x+lengthdir_x(hazard_check_dist, image_angle), y+lengthdir_y(hazard_check_dist, image_angle), o_hazard)){
		var hazard = instance_place(x+lengthdir_x(hazard_check_dist, image_angle), y+lengthdir_y(hazard_check_dist, image_angle), o_hazard);
		if(hazard.side == side){
			mylane = false;
			anim_dist_traveled += speed/2;
			anim_dist_traveled = min(anim_dist_traveled, TILE_SIZE/2);
			anim_angle = sin(degtorad((180/TILE_SIZE/2)*anim_dist_traveled))*45;
		} else {
			mylane = true;
		}
}else{
	mylane = true;
	if(anim_dist_traveled > 0){
		anim_dist_traveled -= speed/2;
		anim_dist_traveled = max(anim_dist_traveled, 0);
		anim_angle = sin(degtorad((180/TILE_SIZE/2)*anim_dist_traveled))*-45;
	}
}

//Check for turn



/*if(anim_dist_traveled > 0){
	//anim_dist_traveled = min(point_distance(x, y, anim_start_x, anim_start_y)/2, 16);
	anim_angle = sin(degtorad((180/16)*anim_dist_traveled))*45;
}
