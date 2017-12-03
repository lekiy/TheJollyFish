var road = instance_place(x, y, o_road_base);
if(instance_exists(road)){
	switch(road.current_style){
		case road_style.curved_sw:
			path = path_add();
			
			path_add_point(path, x, y, 100);
			path_add_point(path, road.x+TILE_SIZE/4, road.y-TILE_SIZE/4, 100);
			path_add_point(path, road.x-TILE_SIZE/4+1, road.y-TILE_SIZE/4, 100);
			path_set_closed(path, false);
			//path_set_precision(path, 4);
			path_set_kind(path, 1);

			path_start(path, move_speed, path_action_stop, true);
		break;
		case road_style.curved_se:
			path = path_add();
			
			path_add_point(path, x, y, 100);
			path_add_point(path, road.x-TILE_SIZE/4+1, road.y-TILE_SIZE/4, 100);
			path_add_point(path, road.x-TILE_SIZE/4+1, road.y+TILE_SIZE/4, 100);
			path_set_closed(path, false);
			//path_set_precision(path, 4);
			path_set_kind(path, 1);

			path_start(path, move_speed, path_action_stop, true);
		break;
		case road_style.straight_horizontal:
			path_start(p_straight_h, move_speed, path_action_stop, false);
		break;
		default: 
			path_start(p_straight_v, move_speed, path_action_stop, false);
			
		break;
	}
}