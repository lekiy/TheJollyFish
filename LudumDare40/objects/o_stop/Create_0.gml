/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
enum stopsign {
	go,
	stop
}

enum roadside {
	right = -1,
	left = 1
}
side = roadside.right;
stop_obj = noone;
current_state = stopsign.stop;
flip_rate = room_speed*3;
alarm[0] = flip_rate;