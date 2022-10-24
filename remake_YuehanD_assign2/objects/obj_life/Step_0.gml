/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(y>room_height-horizon+12){
	y=room_height-horizon+12;
	fall=false;
}
if(fall){
	y+=sp;
	sp+=grav;
}else if(image_alpha>0){
	image_alpha -=0.08;
}else{
	instance_destroy();
}

if( x>room_width+50 ){
	instance_destroy ();
}

if(place_meeting(x, y, obj_grass)){
	fall=false;
}

if(room!=room_game){
	instance_destroy();
}

if(place_meeting(x,y,obj_player)){
	if(LIFE<5){LIFE++;}
	audio_play_sound(reward, 1, false);
	instance_destroy();
}