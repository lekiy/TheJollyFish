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

var x2 = noone;
var y2 = noone;

var x3 = noone;
var y3 = noone;

var x4 = argument3;
var y4 = argument4;

var dir_start = argument5;
var dir_end = argument6;

var SMOOTH_OFFSET = 5;




{
var i;
for (i = 0; i < 10; i += 1)
   {
   draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   }
}