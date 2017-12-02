var road = instance_nearest(x, y, o_road_base);

if (road.x < x) {
	side = roadside.right;
} else if (road.x == x) {
	side = roadside.left;
}	