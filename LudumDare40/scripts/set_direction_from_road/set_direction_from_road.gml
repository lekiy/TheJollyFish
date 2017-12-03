///@arg road

var road = argument0;

if(instance_exists(road)){
	switch(road.current_style){
		case road_style.straight_vertical:
			if(x > road.x) return up*90;
			else return down*90;
		case road_style.straight_horizontal:
			if(y > road.y) return right*90;
			else return left*90;
	}
}