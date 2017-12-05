/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -y-3;
side = noone;
stop_obj = noone;
current_state = false;
flip_rate = room_speed*3;

randomize();

self_controlled = false;
change_duration = room_speed*3;
initial_duration = room_speed*irandom(4)+1;

initialized = false;
y_flip = 1;