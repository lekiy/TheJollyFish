/// @description Insert description here
// You can write your code in this editor

if (side = noone) {
	var road = instance_place(x, y, o_road_base);
	side = get_lane_direction(road);
}

//var road = instance_place(x, y, o_road_base);
//side = get_lane_direction(road);


if(!current_state){
	if(!instance_exists(stop_obj)){
		var stopper_x = x;
		var stopper_y = y;
		/*{
		switch (side)
		   {
		   case roadside.up:
		      stopper_x -= 8;
		      break;
		   case roadside.down:
		      stopper_x += 8;
		      break;
		   case roadside.right:
		      stopper_y -= 8;
		      break;
		   case roadside.left:
		      stopper_y += 8;
		      break;
		   }
		}*/

		stop_obj = instance_create_layer(stopper_x, stopper_y, "Instances", o_stopper);	
		stop_obj.side = side;
	}
}

if(current_state){
	if(instance_exists(stop_obj)){
		instance_destroy(stop_obj);	
	}
}

/*
switch(side) {
	case roadside.rleft:
		image_index = (current_state) ? 1 : 0; break;
	case roadside.rright:
		image_index = (current_state) ? 3 : 2; break;
}
*/

/*

if (current_state) {
	image_index = 1;
} else {
	image_index = 0;
}

*/