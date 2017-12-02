var road = instance_nearest(x, y, o_road_base);

//var r_center_x = road.x+TILE_SIZE/2;
//var r_center_y = road.y+TILE_SIZE/2;

if(x > road.x && y < road.y){
	side = roadside.right;
}
if(x < road.x && y > road.y){
	side = roadside.left;
}

if(x > road.x && y > road.y){
	side = roadside.down;
}
if(x < road.x && y < road.y){
	side = roadside.up;
}

/*
if (road.x == x) {
	side = roadside.down;
} else if (road.x < x) {
	side = roadside.up;
}