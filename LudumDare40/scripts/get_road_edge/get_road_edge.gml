//@arg road
//@arg edge
//@arg modi

#macro right 0
#macro top 1
#macro up 1
#macro left 2
#macro down 3
#macro bottom 3

var road = argument0;
var edge = argument1;
var modi = argument2;

var xx = road.x;
var yy = road.y;

/**
switch(edge){
	case right: return xx+TILE_SIZE*modi;
	case top:	return yy-TILE_SIZE*modi;
	case left:  return xx-TILE_SIZE*modi;
	case down:  return yy+TILE_SIZE*modi;
}*/

switch(edge){
	case right: return [xx+TILE_SIZE*modi, yy];
	case top:	return [xx, yy-TILE_SIZE*modi];
	case left:  return [xx-TILE_SIZE*modi, yy];
	case down:  return [xx, yy+TILE_SIZE*modi];

}