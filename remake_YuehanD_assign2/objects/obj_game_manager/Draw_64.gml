/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(room == room_game){
	
	draw_set_font(life_score);

	draw_set_halign(fa_left);
	draw_text(50, 120, "Score: "+ string(SCORE)+"\nHighest Score: "+ string(MAXSCORE));

	draw_sprite(lifebar, 0, 30, 30);

	switch(LIFE){
		case 1:
			draw_sprite(lifebar, 1, 30, 30);
			break;
		case 2:
			draw_sprite(lifebar, 2, 30, 30);
			break;
		case 3:
			draw_sprite(lifebar, 3, 30, 30);
			break;
		case 4:
			draw_sprite(lifebar, 4, 30, 30);
			break;
		case 5:
			draw_sprite(lifebar, 5, 30, 30);
			break;
	}
	draw_sprite(lifebar, 6, 30, 30);

}else if(room == room_start){
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_font(title);
	draw_set_color(c_black);
	draw_text(room_width/2, room_height/2-100, "Era Run");
	
	if(press_enter_alpha>=1 || press_enter_alpha<=0){
		alpha_sp*=-1;
	}
	press_enter_alpha += alpha_sp;
	draw_set_alpha(press_enter_alpha);
	draw_set_font(life_score);
	draw_text(room_width/2, room_height/2+30,"Press Enter");
}else if(room==room_end){
	draw_set_halign(fa_center);
	draw_set_font(life_score);
	draw_text(room_width/2, 120, "You lose! Press Enter to Play again.");
	draw_set_color(c_black);
	
	draw_text(room_width/2, 200, "Resource Used:\nBGM:\nHallow Lights - ShadyDave\nJungle Loops - ShadyDave\nSE:\nSyphersent\nAsterial-Arts\nAlegemaate\nstrangehorizon\ncabled-mass\nd00120058\nMATRIXXX_");
}
