/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_set_font(Text);
draw_set_halign(fa_center);
if(room == Begin){
	draw_text(room_width/2, room_height/2,"Welcome! Press ENTER to play.")
}else if(room == Die){
	draw_text(room_width/2, room_height/2,"You Died! Press ENTER to play again.")
}else if(room == Win){
	draw_text(room_width/2, room_height/2,"Congratulations! Press ENTER to play again.")
}