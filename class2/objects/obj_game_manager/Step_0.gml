/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(room = room_start){
	if(keyboard_check_pressed(vk_space)){
		LIVES = 3;
		room_goto_next();
	}
}

if(room = room_end){
	if(keyboard_check_pressed(vk_space)){
		room_goto(room_start);
	}
}