/// @description Insert description here
// You can write your code in this editor
depth = -y+50;
image_speed = 0;
enum road_style {
	straight_vertical,
	straight_horizontal,
	intersection,
	curved_down_right,
	curved_down_left,
	curved_up_right,
	curved_up_left
}
current_style = noone;
current_type = noone;

//Legacy code use style instead//
enum road_type {
	straight,
	curved,
	intersection
}

if(current_style == noone){
	var bit = 0;
	
	//right
	if(instance_place(x+sprite_width, y, o_road_base)){
		bit+=1;
	}
	
	//bottom
	if(instance_place(x, y+sprite_height, o_road_base)){
		bit+=2;
	}
	
	//left
	if(instance_place(x-sprite_width, y, o_road_base)){
		bit+=4;
	}
	
	//up
	if(instance_place(x, y-sprite_height, o_road_base)){
		bit+=8;
	}
	
	switch(bit){
		default: current_style = road_style.straight_vertical; break;
		case 1: current_style = road_style.straight_horizontal; break;
		case 3: current_style = road_style.curved_down_right; break;
		case 4: current_style = road_style.straight_horizontal; break;
		case 5: current_style = road_style.straight_horizontal; break;
		case 6: current_style = road_style.curved_down_left; break;
		case 9: current_style = road_style.curved_up_right; break;
		case 10: current_style = road_style.straight_vertical; break;
		case 12: current_style = road_style.curved_up_left; break;
		case 15: current_style = road_style.intersection; break;
	}
	
	switch(bit){
		default: current_type = road_type.straight; break;
		case 3: current_type = road_type.curved; break;
		case 5: current_type = road_type.curved; break;
		case 6: current_type = road_type.curved; break;
		case 9: current_type = road_type.curved; break;
	}
}

image_index = current_style;

//-----------------------------//