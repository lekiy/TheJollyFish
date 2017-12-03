/// @description Insert description here
// You can write your code in this editor

var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);
var h_offset = 60;
var h_space = 20;

var i = 0;

instance_create_layer(0, 0, "Instances", o_camera);

instance_create_layer(width/2, h_offset, "Instances", o_title);
h_offset+=sprite_get_height(s_title);
instance_create_layer(width/2, h_offset+(h_space)*i++, "Instances", o_button_start);
//instance_create_layer(width/2, h_offset+(h_space+sprite_get_height(s_button_start))*i++, "Instances", o_button_start);
instance_create_layer(width/2, h_offset+(h_space+sprite_get_height(s_button_start))*i++, "Instances", o_button_exit);