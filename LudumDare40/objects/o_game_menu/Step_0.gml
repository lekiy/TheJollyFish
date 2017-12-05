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

var clickable = instance_place(mouse_x, mouse_y, o_stop);
if(instance_exists(clickable)){
	if(point_in_rectangle(mouse_x, mouse_y, clickable.x-sprite_get_width(clickable)/2, clickable.y-sprite_get_height(clickable)/2, clickable.x+sprite_get_width(clickable)/2, clickable.y+sprite_get_height(clickable)/2)){
	window_set_cursor(cr_handpoint);	
	}
	
}else{
	window_set_color(cr_none);	
}