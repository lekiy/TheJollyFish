/// @description Insert description here
// You can write your code in this editor
direction = image_angle

if(!is_stopped){
	speed = move_speed;	
}else{
	speed = 0;	
}

is_stopped = false;
//mylane = true;

if(place_meeting(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_car)){
		var lead_car = instance_place(x+lengthdir_x(8, image_angle), y+lengthdir_y(8, image_angle), o_car);
		if(lead_car.side == side){
			is_stopped = true;	
		}
}