/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(room!=room_game){
	instance_destroy();
}

if(image_alpha<=0){
	instance_destroy();
}

if(fly){
	x+=sp_y;
	y+=sp_x;

}else{
	if(y<wait_pos){
		y+=sp_y;
	}else{
		wait_frame--;
		if(wait_frame<=0){
			audio_sound_pitch(tweet, random_range(.8,1.2));
			audio_play_sound(tweet, 1, false);
			fly=true;
			dst_x = obj_player.x-x;
			dst_y = obj_player.y-y;
			sp_y = dst_x/50;
			sp_x = dst_y/50;
			image_angle = point_direction(x, y, obj_player.x, obj_player.y);
			image_xscale*=-1;
			if(obj_player.x<x){
				image_yscale*=-1;
			}
			
		}
	}

}

if(back){
	image_alpha-=0.01;
}

if(place_meeting(x,y, obj_grass)&& !back){
	sp_y = -sp_y*0.4;
	sp_x = -sp_x*0.4;
	back=true;
	image_xscale*=-1;
}