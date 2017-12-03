/// @description Insert description here
// You can write your code in this editor
depth = 2;
image_speed = 0;
enum road_style {
	straight_vertical,
	straight_horizontal,
	intersection,
	curved_se,
	curved_sw,
	curved_ne,
	curved_nw
}
current_style = noone;

//Legacy code use style instead//
enum road_type {
	straight,
	curved,
	intersection
}

current_type = noone;
//-----------------------------//