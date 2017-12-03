///@arg path_ind
///@arg road
///@arg edgeh
///@arg edgev
///@arg mod_h
///@arg mod_v

var path = argument0;
var road = argument1;
var edge_h = argument2;
var edge_v = argument3;
var mod_h = argument4;
var mod_v = argument5;
path_add_point(path, get_road_edge(road, edge_h, mod_h), get_road_edge(road, edge_v, mod_v), 100);