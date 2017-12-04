/// @description Insert description here
// You can write your code in this editor
if(global.level_complete && !next_lvl_btn_created && global.level_passed){
	instance_create_layer(next_btn_x, next_btn_y, "Instances", o_button_level_next);
	next_lvl_btn_created = true;
}else if(global.level_complete && global.level_failed){
	restart_btn_x = global.view_width/2;
	restart_btn_y = global.view_height/2;
	restart_btn.x = restart_btn_x;
	restart_btn.y = restart_btn_y;
	complete_text = "Level Failed!";
	complete_text_x = global.view_width/2;
	complete_text_y = global.view_height/2-20 - sprite_get_height(s_button_restart);
}