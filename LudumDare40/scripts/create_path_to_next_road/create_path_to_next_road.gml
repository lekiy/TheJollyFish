///@arg mylane

var mylane = argument0;


var road = instance_place(x, y, o_road_base);
var path = path_add();
var dir_index = round(direction/90);
if(dir_index >= 4) dir_index -= 4;

//Set current position to path

var inside_corner = 0.25;
var next_road = 0.8;

var new_direction;

/*
var ourRoad = instance_position(x, y, o_road_base);
show_debug_message("=our Road at==");
show_debug_message(x);
show_debug_message(y);

show_debug_message(ourRoad.x);
show_debug_message(ourRoad.y);
show_debug_message("LR");
show_debug_message(ourRoad.bbox_left);
show_debug_message(ourRoad.bbox_right);
path_add_point(path, x, y, 100);
var nextRoad = instance_position(ourRoad.x - TILE_SIZE, ourRoad.y, o_road_base);

show_debug_message("=nextRoad==");
show_debug_message(ourRoad.x - TILE_SIZE);
show_debug_message(ourRoad.y);
show_debug_message(nextRoad.x);
show_debug_message(nextRoad.y);

show_debug_message("LR");
show_debug_message(nextRoad.bbox_left);
show_debug_message(nextRoad.bbox_right);
if (nextRoad != ourRoad) {
	show_debug_message(x);
	show_debug_message(ourRoad.bbox_left);
	show_debug_message(nextRoad.bbox_right);
	show_debug_message(x - nextRoad.bbox_right);
	path_add_point(path, nextRoad.bbox_right, y, 100);
						
}*/

path_add_point(path, x, y, 100);
var ourRoad = instance_position(x, y, o_road_base);
var nextRoad = noone; 

if (ourRoad != -4) {
	new_direction = get_direction_next(ourRoad, dir_index);
	nextRoad = get_road_next(ourRoad, new_direction); //instance_position(ourRoad.x - TILE_SIZE, ourRoad.y, o_road_base);
	var coords = get_road_real_edge(nextRoad, new_direction, mylane);
	/*switch(road.current_style) {
		case road_style.straight_horizontal:
			nextRoad = get_road_next(ourRoad, dir_index); //instance_position(ourRoad.x - TILE_SIZE, ourRoad.y, o_road_base);
			var coords = get_road_real_edge(nextRoad, dir_index, mylane);
			//path_add_point(path, nextRoad.bbox_right, y, 100);
			
	}*/
	
	path_add_point(path, coords[0], coords[1], 100);
}


/*

if(instance_exists(road)){
	switch(road.current_style){
		case road_style.straight_vertical:
			if(dir_index = up){
				if (mylane) {
					path_add_point(path, x, y-5, 100);
					path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road)+5, 100);
					path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
				} else {
					path_add_point(path, x, y-5, 100);
					path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, top, next_road)+5, 100);
					path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, top, next_road), 100);
				}
			}
			if(dir_index = down){
				if (mylane) {
					path_add_point(path, x, y+5, 100);
					path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road)-5, 100);
					path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
				} else {
					path_add_point(path, x, y+5, 100);
					path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, bottom, next_road)-5, 100);
					path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, bottom, next_road), 100);
				}
			}
			break;
		case road_style.straight_horizontal:
			if(dir_index = right){
				path_add_point(path, x+5, y, 100);
				if (mylane) {
					path_add_point(path, get_road_edge(road, right, next_road)-5, get_road_edge(road, bottom, inside_corner), 100);
					path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
				} else {
					path_add_point(path, get_road_edge(road, right, next_road)-5, get_road_edge(road, top, inside_corner), 100);
					path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, top, inside_corner), 100);
				}
			}
			if(dir_index = left){
				//path_add_point(path, x-5, y, 100);
				if (mylane) {
					
					//TILE_SIZE
					//path_add_point(path, get_road_edge(road, left, next_road)+5, get_road_edge(road, top, inside_corner), 100);
//					path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
				} else {
					path_add_point(path, get_road_edge(road, left, next_road)+5, get_road_edge(road, bottom, inside_corner), 100);
					path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, bottom, inside_corner), 100);
				}
			}
			break;
		case road_style.intersection:
			if(dir_index = up){
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
			}
			if(dir_index = down){
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
			}
			if(dir_index = right){
				path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
			}
			if(dir_index = left){
				path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
			}
			break;
		case road_style.curved_down_left:
			if(dir_index = up){
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, inside_corner), 100);
				path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
			
			}
			if(dir_index = right){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
				
			}
			break;
		case road_style.curved_down_right:
			if(dir_index = up){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
				
			}
			if(dir_index = left){
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, top, inside_corner), 100);
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
			}
			break;
		case road_style.curved_up_right:
			if(dir_index = down){
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, inside_corner), 100);
				path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
			
			}
			if(dir_index = left){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
				
			}
			break;
		case road_style.curved_up_left:
			if(dir_index = down){
				path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
			}
			if(dir_index = right){
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, bottom, inside_corner), 100);
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
			}
			break;
	}

} */

	path_set_closed(path, false);
	path_set_kind(path, 1);
	
	return path;