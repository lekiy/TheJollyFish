/// @description Insert description here
// You can write your code in this editor

if(current_type == noone){
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
		default: current_type = road_type.straight_vertical; break;
		case 1: current_type = road_type.straight_horizontal; break;
		case 3: current_type = road_type.curved_se; break;
		case 4: current_type = road_type.straight_horizontal; break;
		case 5: current_type = road_type.straight_horizontal; break;
		case 6: current_type = road_type.curved_sw; break;
		case 10: current_type = road_type.straight_vertical; break;
		case 15: current_type = road_type.intersection; break;
	}
}

image_index = current_type;