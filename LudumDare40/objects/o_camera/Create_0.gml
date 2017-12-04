/// @description Insert description here
// You can write your code in this editor

width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

shake_magnitude = 0;
shake_duration = 0;
shake_damping = 0.98;
shake_screen = false;

if(room == r_menu){
	direction = 330;
	speed = 2;
}