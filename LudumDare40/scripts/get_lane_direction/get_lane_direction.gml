///@arg road

var road = argument0;

if(instance_exists(road)){
	switch(road.current_style){
		case road_style.straight_vertical:
			if(x > road.x) return up;
			else return down;
		case road_style.straight_horizontal:
			if(y > road.y) return right;
			else return left;
	}
}