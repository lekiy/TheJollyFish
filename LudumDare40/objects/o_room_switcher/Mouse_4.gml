/// @description Insert description here
// You can write your code in this editor

if (room_next(room) != -1) {
   room_goto(room_next(room));
} else {
	room_goto(room_first);
}