///@arg mylane

var mylane = argument0;

var road = instance_place(x, y, o_road_base);
var path = path_add();
var dir_index = round(direction/90);
if(dir_index >= 4) dir_index -= 4;


var new_direction;


//path_add_point(path, x, y, 100);

var nextRoad = noone; 

var ourRoad = instance_position(x, y, o_road_base);
if (ourRoad != -4) {
	
	var new_direction = get_direction_next(ourRoad, dir_index);
	var nextRoad = get_road_next(ourRoad, new_direction);
	
	if (nextRoad != -4) {
		var coords = get_road_real_edge(nextRoad, new_direction, mylane);
		path = get_smoothest_path(path, x,y, coords[0], coords[1], dir_index, new_direction);	
//		path_add_point(path, coords[0], coords[1], 100);
		
	} else {
		
		//lengthdir_x(TILE_SIZE, dir_index);
		var coords = get_road_edge(ourRoad, dir_index, 1);
		path = get_smoothest_path(path, x,y, coords[0], coords[1], dir_index, new_direction);	
		//var coords = get_road_real_edge(ourRoad, new_direction, mylane);
		//path = get_smoothest_path(path, x,y, coords[0], coords[1], dir_index, new_direction);


		show_debug_message("nextRoad - Lost car at:");
		show_debug_message([x,y]);
	}
} else {
	show_debug_message("ourRoad - Lost car at:");
	show_debug_message([x,y]);
}

path_set_closed(path, false);
path_set_kind(path, 1);
	
return path;