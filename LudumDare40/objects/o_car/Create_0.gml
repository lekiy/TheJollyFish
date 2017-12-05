/// @description Insert description here
// You can write your code in this editor
move_speed = 2;
is_stopped = false;
mylane = true;
side = noone;
direction = 90;
target = noone;
path = noone;
image_speed = 0;
image_index = irandom(1);
has_entered = false;

//shader stuff//
upixelH = shader_get_uniform(sh_car_color, "pixelH");
upixelW = shader_get_uniform(sh_car_color, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));

crash_sounds[0] = a_crash_0;
crash_sounds[1] = a_crash_1;
crash_sounds[2] = a_crash_2;
crash_sounds[3] = a_crash_3;


//s_set_road_side()

