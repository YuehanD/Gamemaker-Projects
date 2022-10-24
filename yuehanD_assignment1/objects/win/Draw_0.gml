/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(player.player_win){
	draw_set_color(c_dkgray);
	draw_rectangle(0, 0, room_width, room_height, false);
	

	draw_set_color(c_white);
	draw_text(room_width/2 -50, room_height/2, "Congratulations!");
}