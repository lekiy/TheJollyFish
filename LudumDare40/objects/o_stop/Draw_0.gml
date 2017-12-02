/// @description Insert description here
// You can write your code in this editor
switch(side){
		case roadside.right: draw_sprite(s_stop, image_index, x+TILE_SIZE/4, y); break;
		case roadside.left: draw_sprite(s_stop, image_index, x-TILE_SIZE/4, y); break;
		case roadside.up: draw_sprite(s_stop, image_index, x, y-TILE_SIZE/4); break;
		case roadside.down: draw_sprite(s_stop, image_index, x, y+TILE_SIZE/4); break;
}