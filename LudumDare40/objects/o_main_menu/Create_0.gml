/// @description Insert description here
// You can write your code in this editor


var h_offset = 100;
var h_space = 20;

var i = 0;
instance_create_layer(room_width/2, h_offset+h_space*i++, "Menu", o_title);
instance_create_layer(room_width/2, h_offset+h_space*i++, "Menu", o_menu_button);
instance_create_layer(room_width/2, h_offset+h_space*i++, "Menu", o_menu_button);
instance_create_layer(room_width/2, h_offset+h_space*i++, "Menu", o_menu_button);