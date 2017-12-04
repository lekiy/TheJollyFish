/// @description Insert description here
// You can write your code in this editor



switch(side) {
	case roadside.rleft:
		image_index = (current_state) ? 1 : 0; 
		y_flip = 1; break;
	case roadside.rup:
		image_index = (current_state) ? 5 : 4; 
		y_flip = -1; break;
	case roadside.rdown:
		image_index = (current_state) ? 5 : 4; 
		y_flip = 1; break;
	case roadside.rright:
		image_index = (current_state) ? 3 : 2; 
		y_flip = 1; break;
}


draw_sprite_ext(s_stop, image_index, x+TILE_SIZE/4, y, 1, y_flip, 0, c_white, 1);

/*
switch(side){
	case roadside.rright: draw_sprite(s_stop, image_index, x+TILE_SIZE/4, y); break;
	case roadside.rleft: draw_sprite(s_stop, image_index, x-TILE_SIZE/4, y); break;
	case roadside.rup: draw_sprite(s_stop, image_index, x, y-TILE_SIZE/4); break;
	case roadside.rdown: draw_sprite(s_stop, image_index, x, y+TILE_SIZE/4); break;
}
*/