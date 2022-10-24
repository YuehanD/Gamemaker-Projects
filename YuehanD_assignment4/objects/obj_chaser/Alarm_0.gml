/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(distance<400){
	chase = true;
	player_x = obj_player.x;
	player_y = obj_player.y;
	alarm[0]=50;
}else{
	chase = false;
	alarm[0]=100;
}

