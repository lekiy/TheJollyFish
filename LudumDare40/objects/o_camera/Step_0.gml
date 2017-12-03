/// @description Insert description here
// You can write your code in this editor

if(rectangle_in_rectangle(x, y, x+width, y+height, 0, 0, room_width, room_height) != 1){
	x-=lengthdir_x(speed, direction);
	y-=lengthdir_y(speed, direction);
	direction-=90;	
}

x = round(x);
y = round(y);
camera_set_view_pos(view_camera[0], x, y);