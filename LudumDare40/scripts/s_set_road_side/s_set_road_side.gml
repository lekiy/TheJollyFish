var road = instance_nearest(x, y, o_road_base);

//var r_center_x = road.x+TILE_SIZE/2;
//var r_center_y = road.y+TILE_SIZE/2;

// This script conflaites 'side' with road corner.
// For a road tile 2x2
// rright means Top Right
// rleft means Bottom Left
// rdown means Bottomr Right
// rup means Top Left
// ... I'm not sure why / what used this.
// Thi smgiht be from when we had road origin a top left of the road tile.

if(x > road.x && y < road.y){
	side = roadside.rright;
}
if(x < road.x && y > road.y){
	side = roadside.rleft;
}

if(x > road.x && y > road.y){
	side = roadside.rdown;
}
if(x < road.x && y < road.y){
	side = roadside.rup;
}

/*
if (road.x == x) {
	side = roadside.down;
} else if (road.x < x) {
	side = roadside.up;
}