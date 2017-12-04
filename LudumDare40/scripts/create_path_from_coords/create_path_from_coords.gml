///@arg x
///@arg y
///@arg dir
///@arg mylane

var xx = argument0;
var yy = argument1;
var dir = argument2;
var mylane = argument3;


var road = instance_place(xx, yy, o_road_base);
var path = path_add();
var dir_index = round(dir/90);
if(dir_index >= 4) dir_index -= 4;

//Set current position to path

var inside_corner = 0.25;
var next_road = 0.8;

path_add_point(path, x, y, 100);

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
				path_add_point(path, x-5, y, 100);
				if (mylane) {
					path_add_point(path, get_road_edge(road, left, next_road)+5, get_road_edge(road, top, inside_corner), 100);
					path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
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
		case road_style.curved_sw:
			if(dir_index = up){
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, inside_corner), 100);
				path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
			
			}
			if(dir_index = right){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
				
			}
			break;
		case road_style.curved_se:
			if(dir_index = up){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
				
			}
			if(dir_index = left){
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, top, inside_corner), 100);
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, next_road), 100);
			}
			break;
		case road_style.curved_ne:
			if(dir_index = down){
				path_add_point(path, get_road_edge(road, left, inside_corner), get_road_edge(road, bottom, inside_corner), 100);
				path_add_point(path, get_road_edge(road, right, next_road), get_road_edge(road, bottom, inside_corner), 100);
			
			}
			if(dir_index = left){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
				
			}
			break;
		case road_style.curved_nw:
			if(dir_index = down){
				//path_add_point(path, x, y, 25);
				path_add_point(path, get_road_edge(road, left, next_road), get_road_edge(road, top, inside_corner), 100);
				
			}
			if(dir_index = right){
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, bottom, inside_corner), 100);
				path_add_point(path, get_road_edge(road, right, inside_corner), get_road_edge(road, top, next_road), 100);
			}
			break;
	}
	path_set_closed(path, false);
	path_set_kind(path, 1);
	
	return path;
}