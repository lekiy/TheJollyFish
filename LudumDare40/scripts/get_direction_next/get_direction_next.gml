///@arg ourRoad
///@arg direction

/** 
Given a road tile & a current direction
what is the new direction after traveling on the road?
*/


var ourRoad = argument0;
var in_direction = argument1;
var roadStyle = ourRoad.current_style;

var new_direction;

switch (roadStyle) {
	case road_style.straight_horizontal: // ━
	case road_style.straight_vertical: // ┃
	case road_style.intersection: // ╋
		return in_direction;
	case road_style.curved_down_left: // ┓
		if(in_direction == up) return left;
		if(in_direction == right) return down;
	case road_style.curved_down_right: // ┏
		if(in_direction == up) return right;
		if(in_direction == left) return down;
	case road_style.curved_up_left: // ┛
		if(in_direction == down) return left;
		if(in_direction == right) return up;
	case road_style.curved_up_right: // ┗
		if(in_direction == down) return right;
		if(in_direction == left) return up;
}


/*
switch (in_direction) {
	case left:
		if (roadStyle == road_style.straight_horizontal) { // ━
			new_direction = left; break;
		}
		if (roadStyle == road_style.intersection) { // ╋
			new_direction = left; break;
		}
		if (roadStyle == road_style.curved_down_right) { // ┏
			new_direction = down; break;
		}
		if (roadStyle == road_style.curved_up_right) { // ┗
			new_direction = up; break;
		}
	case right :
		if (roadStyle == road_style.straight_horizontal) { // ━
			new_direction = right; break;
		}
		if (roadStyle == road_style.intersection) { // ╋
			new_direction = right; break;
		}
		if (roadStyle == road_style.curved_down_left) { // ┓
			new_direction = down; break;
		}
		if (roadStyle == road_style.curved_up_left) { // ┛
			new_direction = up; break;
		}
	case up:
		if (roadStyle == road_style.straight_vertical) { // ┃
			new_direction = up;  break;
		}
		if (roadStyle == road_style.intersection) { // ╋
			new_direction = up; break;
		}
		if (roadStyle == road_style.curved_down_left) { // ┓
			new_direction = left; break;
		}
		if (roadStyle == road_style.curved_down_right) { // ┏
			new_direction = right; break;
		}
	case down :
		if (roadStyle == road_style.straight_vertical) { // ┃
			new_direction = down; break;
		}
		if (roadStyle == road_style.intersection) { // ╋
			new_direction = down; break;
		}
		if (roadStyle == road_style.curved_up_left) { // ┛
			new_direction = left; break;
		}
		if (roadStyle == road_style.curved_up_right) { // ┗
			new_direction = right; break;
		}
}
*/

return new_direction;