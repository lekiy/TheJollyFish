/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);

var gui_modi_x = display_get_gui_width()/view_wport[0];
var gui_modi_y = display_get_gui_height()/view_hport[0];

if(mouse_check_button_pressed(mb_left)){
	if(point_in_rectangle((mouse_x-xx), (mouse_y-yy), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)){
		event_user(0);
		audio_sound_pitch(click_sound, 1+random_range(-0.05, 0.05));
		audio_play_sound(click_sound, 5, false);
	}
}

time++;