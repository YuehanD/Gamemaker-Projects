/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(room = room2){
	room_goto(Room1);
}

if(life>0){
	recovering--;
}else{
	if(keyboard_check(vk_enter)){
		room_goto(room2);
	}
}

if(recovering <0 && !player){
	instance_create_depth(mouse_x, mouse_y, obj_player);
	player=true;
}