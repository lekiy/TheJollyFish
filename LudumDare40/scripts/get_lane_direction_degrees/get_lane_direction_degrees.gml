///@arg road

var road = argument0;

if(instance_exists(road)){
	return get_lane_direction(road) * 90;
}