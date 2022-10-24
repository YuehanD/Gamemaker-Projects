/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(room==room_start){
	if(keyboard_check_pressed(vk_enter)){
		LIFE=5;
		SCORE=0;
		room_goto(room_game);
		instance_create_depth(100,100, 0, obj_enemy_manager);
		draw_set_alpha(1);
	}
}
if(room==room_end){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(room_start);
		audio_stop_sound(end_bgm);
		audio_play_sound(bgm,1, true);
	}
}
if(LIFE<=0 && room==room_game){
	room_goto(room_end);
	audio_stop_sound(bgm);
	audio_play_sound(end_bgm,1,true);
}

if(SCORE>MAXSCORE){
	MAXSCORE=SCORE;
}