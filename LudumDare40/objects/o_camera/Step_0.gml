/// @description Insert description here
// You can write your code in this editor

if(rectangle_in_rectangle(x, y, x+width, y+height, 0, 0, room_width, room_height) != 1){
	x-=lengthdir_x(speed, direction);
	y-=lengthdir_y(speed, direction);
	direction-=90;	
}


if(shake_screen){
	x+=random_range(-shake_magnitude, shake_magnitude);
	y+=random_range(-shake_magnitude, shake_magnitude);
	shake_duration--;
	shake_magnitude*=shake_damping;
	if(shake_duration <= 0){
		shake_screen = false;	
		//Set the position back to normal (will need to be changed to add new camera functions
		if(!room == r_menu){
			x*=0.2;
			y*=0.2;
			if(x < 1) x = 0;
			if(y < 1) y = 0;
		}
	}
}

x = round(x);
y = round(y);
camera_set_view_pos(view_camera[0], x, y);