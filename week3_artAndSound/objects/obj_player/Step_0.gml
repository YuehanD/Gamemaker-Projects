/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(keyboard_check(vk_left)){
	mspd-=accel;
	sprite_index = walk;
	if(image_xscale>0){
		image_xscale*=-1;
	}
	var this_frame = floor(image_index);
	if(this_frame == 0 or this_frame == 2){
		if(this_frame!=last_frame){
			if(!audio_is_playing(foodstep)){
				if(off_step){
					audio_sound_pitch(foodstep, random_range(.6, .8));
				}else{
					audio_sound_pitch(foodstep, random_range(.8,1.2));
				}
				audio_play_sound(foodstep, 1, false);
			}
			last_frame = this_frame;
		}
	}
}

if(keyboard_check(vk_right)){
	mspd+=accel;
	sprite_index = walk;
	if(image_xscale<0){
		image_xscale*=-1;
	}
	var this_frame = floor(image_index);
	if(this_frame == 0 or this_frame == 2){
		if(this_frame!=last_frame){
			if(!audio_is_playing(foodstep)){
				if(off_step){
					audio_sound_pitch(foodstep, random_range(.6, .8));
				}else{
					audio_sound_pitch(foodstep, random_range(.8,1.2));
				}
				audio_play_sound(foodstep, 1, false);
			}
			last_frame = this_frame;
		}
	}
}

image_speed = 1.2*abs(mspd)/mspd_max;
if((!keyboard_check(vk_left)) and (!keyboard_check(vk_right))){
	sprite_index = idle;
	mspd = lerp(mspd,0,0.2);
	image_speed = 1;
}
mspd = clamp(mspd, -mspd_max, mspd_max);
x+=mspd;
