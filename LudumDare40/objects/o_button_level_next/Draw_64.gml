/// @description Insert description here
// You can write your code in this editor
if(global.level_passed & global.level_complete){
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, sin(time*0.2)*10, c_white, 1);
}else{
	draw_self();
}