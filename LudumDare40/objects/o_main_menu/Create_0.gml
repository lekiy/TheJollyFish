/// @description Insert description here
// You can write your code in this editor


var h_offset = 60;
var h_space = 20;

var i = 0;



instance_create_layer(room_width/2, h_offset, "Instances", o_title);
h_offset+=sprite_get_height(s_title);
i++;
instance_create_layer(room_width/2, h_offset+(h_space)*i++, "Instances", o_menu_button);
instance_create_layer(room_width/2, h_offset+(h_space+sprite_get_height(s_button_start))*i++, "Instances", o_menu_button);
instance_create_layer(room_width/2, h_offset+(h_space+sprite_get_height(s_button_start))*i++, "Instances", o_menu_button);