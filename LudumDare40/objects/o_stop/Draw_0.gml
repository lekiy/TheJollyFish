/// @description Insert description here
// You can write your code in this editor
switch(side){
		case roadside.rright: draw_sprite(s_stop, image_index, x+TILE_SIZE/4, y); break;
		case roadside.rleft: draw_sprite(s_stop, image_index, x-TILE_SIZE/4, y); break;
		case roadside.rup: draw_sprite(s_stop, image_index, x, y-TILE_SIZE/4); break;
		case roadside.rdown: draw_sprite(s_stop, image_index, x, y+TILE_SIZE/4); break;
}