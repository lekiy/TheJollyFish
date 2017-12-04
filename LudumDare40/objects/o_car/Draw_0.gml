/// @description Insert description here
// You can write your code in this editor

/*if(instance_exists(path_index)){
	if (path_index != -1) {
		draw_path(path_index, path_get_point_x(path, 0), path_get_point_y(path, 0), true);
	}
}*/

/*shader_set(sh_car_color);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);*/
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1);
//shader_reset();