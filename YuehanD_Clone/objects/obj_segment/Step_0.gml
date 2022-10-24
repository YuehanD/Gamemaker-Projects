/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(head){
	sprite_index = sprite_head;
}else{
	sprite_index = sprite_nonhead;
}

if(place_meeting(x, y, obj_bullet)){
	hit = true;
	player_hit++;
	instance_destroy(instance_place(x, y, obj_bullet));
}

if(position_meeting(x+sign(sp), y, obj_mushroom)|| x<20 || x>room_width-20){
	turn = true;
}

if(y>room_height-30){
	up_turn = true;
}