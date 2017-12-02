/// @description Insert description here
// You can write your code in this editor


//if(!mylane){
	draw_sprite_ext(sprite_index, image_index, x-lengthdir_x(anim_dist_traveled, image_angle-90), y, 1, 1, image_angle+anim_angle, c_white, 1);
/*}else{
	draw_self();	
}
*/
draw_text(x, y, anim_angle);
draw_text(x, y+10, anim_dist_traveled);
