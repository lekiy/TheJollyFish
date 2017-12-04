///@arg sprite
///@arg image_index
///@arg x
///@arg y
///@arg image_angle
///@arg depth


var sprite = argument0;
var index = argument1;
var xx = argument2;
var yy = argument3;
var rotation = argument4;
var obj_depth = argument5;


var effect = instance_create_layer(x, y, "Instances", o_fx_crash);
effect.sprite = sprite;
effect.sprite_image_ind = index;
effect.sprite_x = xx;
effect.sprite_y = yy;;
effect.sprite_rotation = rotation;
effect.depth = obj_depth;

return effect;