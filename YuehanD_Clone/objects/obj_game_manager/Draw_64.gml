/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_set_font(font_score);
draw_set_halign(fa_center);
draw_text(room_width/2, 20, string(player_score));

curr = room_width-400;
for(i=0; i<life; i++){
	draw_sprite_ext(sprite_player, 0, curr, 20, 0.6, 0.6, 0, c_white, 1);
	curr+=30;
}

if(life==0){
	draw_text(room_width/2, room_height/2, "You Lose! Press ENTER to play again.");
}