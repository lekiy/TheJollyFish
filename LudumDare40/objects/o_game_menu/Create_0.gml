/// @description Insert description here
// You can write your code in this editor

var go_btn_x = global.view_width-sprite_get_width(s_button_start)/2;
var go_btn_y = global.view_height-sprite_get_height(s_button_start)/2;

start_btn = instance_create_layer(go_btn_x, go_btn_y, "Instances", o_button_level_start);

next_btn_x = global.view_width/2;
next_btn_y = global.view_height/2;

restart_btn_x = global.view_width-sprite_get_width(s_button_restart)/2;
restart_btn_y = global.view_height-sprite_get_height(s_button_restart)/2-sprite_get_height(s_button_start);

restart_btn = instance_create_layer(restart_btn_x, restart_btn_y, "Instances", o_button_restart);

next_lvl_btn_created = false;

complete_text = "Level Complete!";
complete_text_x = global.view_width/2;
complete_text_y = global.view_height/2-20 - sprite_get_height(s_button_next_level);
//instance_create_layer(next_btn_x, next_btn_y, "Instances", o_room_switcher);

