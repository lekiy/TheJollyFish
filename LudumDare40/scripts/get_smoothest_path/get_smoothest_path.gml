///@arg path
///@arg x1
///@arg y1
///@arg x4
///@arg y4
///@arg dir_start
///@arg dir_end

var path = argument0;

var x1 = argument1;
var y1 = argument2;

var x4 = argument3;
var y4 = argument4;

var dir_start = argument5;
var dir_end = argument6;

path_add_point(path, x1, y1, 100);

var apex = get_road_apex(x1, y1, x4, y4, dir_start, dir_end);

path_add_point(path, apex[0], apex[1], 100);
path_add_point(path, apex[0], apex[1], 100);

path_add_point(path, x4, y4, 100);

return path;