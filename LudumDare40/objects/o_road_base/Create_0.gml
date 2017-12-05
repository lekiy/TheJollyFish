/// @description Insert description here
// You can write your code in this editor
depth = -y+50;
image_speed = 0;
enum road_style {
	straight_vertical,
	straight_horizontal,
	intersection,
	curved_down_right,
	curved_down_left,
	curved_up_right,
	curved_up_left
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