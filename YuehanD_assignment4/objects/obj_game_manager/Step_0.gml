/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(room==Begin || room == Die || room == Win){
	if(keyboard_check(vk_enter)){
		room = Level1;
		life = 1;
		key = 0;
	}
}else if(room == Level1 || room == Level2 || room == Level3){
	if(life==0){
		room = Die;
	}
	if(key ==3){
		room_goto_next();
	}
}