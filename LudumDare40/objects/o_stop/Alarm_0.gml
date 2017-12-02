/// @description Insert description here
// You can write your code in this editor
if(current_state == stopsign.stop){
	current_state = stopsign.go;
	image_index = 1;
}else{
	current_state = stopsign.stop;
	image_index = 0;
}

alarm[0] = flip_rate;