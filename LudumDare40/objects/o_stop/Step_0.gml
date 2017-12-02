/// @description Insert description here
// You can write your code in this editor
if(!current_state){
	if(!instance_exists(stop_obj)){
		stop_obj = instance_create_layer(x + side*8, y, "Instances", o_stopper);	
	}
}

if(current_state){
	if(instance_exists(stop_obj)){
		instance_destroy(stop_obj);	
	}
}

if (current_state) {
	image_index = 1;
} else {
	image_index = 0;
}