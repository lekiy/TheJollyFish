/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_x(view_camera[0]);

var gui_modi_x = display_get_gui_width()/view_wport[0];
var gui_modi_y = display_get_gui_height()/view_hport[0];

event_inherited();

draw_set_color(c_blue);
draw_rectangle(x, y, x+x+sprite_width*2, y+sprite_height*2, false);
draw_set_color(c_red);
draw_circle(mouse_x-xx, mouse_y-yy, 5, false);