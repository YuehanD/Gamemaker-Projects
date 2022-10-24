/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

depth=1;

if(x<50){
	x=50;
}
if(x>room_width-50){
	x=room_width-50;
}

if(y<room_height - horizon || jmp){
	accel+=grav;
	y+=accel;
}
if(y>=room_height - horizon){
	if(jmp){
		audio_play_sound(footstep, 1, false);
	}
	y=room_height - horizon;
	accel = 0;
	jmp=false;
	
}
if(respawn_timer>0){
	respawn_timer--;
}else if(respawn_timer==0){
	image_blend =c_white;
}

if(keyboard_check(vk_left)){
	direc = 1;
	x-=mvsp;
	sprite_index = walk;
	if(image_xscale>0){
		image_xscale*=-1;
	}
	
	var this_frame = floor(image_index);
	if(this_frame == 1 or this_frame == 3){
		if(this_frame!=last_frame){
			if(!audio_is_playing(footstep)){
				audio_sound_pitch(footstep, random_range(.8,1.2));
				audio_play_sound(footstep, 1, false);
			}
			last_frame = this_frame;
		}
	}
	if(this_frame == 0 or this_frame == 2){
		if(this_frame!=last_frame){
			if(!audio_is_playing(footstep2)){
				audio_sound_pitch(footstep2, random_range(.8,1.2));
				audio_play_sound(footstep2, 1, false);
			}
			last_frame = this_frame;
		}
	}
}

if(keyboard_check(vk_right)){
	direc = 0;
	x+=mvsp;
	sprite_index = walk;
	if(image_xscale<0){
		image_xscale*=-1;
	}
	
	var this_frame = floor(image_index);
	if(this_frame == 1 or this_frame == 3){
		if(this_frame!=last_frame){
			if(!audio_is_playing(footstep)){
				audio_sound_pitch(footstep, random_range(.8,1.2));
				audio_play_sound(footstep, 1, false);
			}
			last_frame = this_frame;
		}
	}
	if(this_frame == 0 or this_frame == 2){
		if(this_frame!=last_frame){
			if(!audio_is_playing(footstep2)){
				audio_sound_pitch(footstep2, random_range(.8,1.2));
				audio_play_sound(footstep2, 1, false);
			}
			last_frame = this_frame;
		}
	}

}

if( keyboard_check_pressed(ord("Z")) && !jmp){
	accel = -20;
	jmp=true;
	audio_play_sound(jpse, 1, false);
}

if( keyboard_check_pressed(ord("X")) && guardalpha>=1){
	audio_play_sound(guard_se, 1, false);
	obj_guard.guard=false;
	guard_timer=300;
	guardalpha=0;
}


if( keyboard_check_pressed(ord("C"))&&!shift){
	shift=true;
	audio_play_sound(dash, 1, false);
	if(direc==0){
		accel_h = 20;
		resist = -2;
	}else{
		accel_h = -20;
		resist = 2;
	}
	
}

if(shift){
	x+=accel_h;
	accel_h+=resist;
	if(direc==0){
		if(accel_h<=0){
			shift=false;
		}
	}else{
		if(accel_h>=0){
			shift=false;
		}
	}
}


if(jmp){
	sprite_index = jump;
}else if((!keyboard_check(vk_left)) and (!keyboard_check(vk_right))){
	sprite_index = idle;
	image_speed = 1;
}

/**
if(keyboard_check_pressed(vk_space)){
	with(instance_create_depth(x, y, 0, obj_bullet)){
		direc = obj_player.direc;	
	}
}
*/
audio_sound_pitch(hit, random_range(.8,1.2));

if(place_meeting(x, y, obj_reward)){
	var hit_reward = instance_place(x,y,obj_reward);
	if(hit_reward.fall){
		SCORE+=10;
		//if(LIFE<5){LIFE++;}
		instance_destroy(hit_reward);
		audio_play_sound(reward, 1, false);
	}
}

if(respawn_timer<=0){
	if(guard_timer<=0){
		if(place_meeting(x, y, obj_enemy)){
			var hit_enemy = instance_place(x,y,obj_enemy);
			if(hit_enemy.fall){
				guardalpha+=0.34;
				audio_sound_pitch(hit, random_range(.8,1.2));
				audio_play_sound(hit, 1, false);
				LIFE--;
				image_blend = make_color_rgb(230,150,160);
				instance_destroy(hit_enemy);
			}
			respawn_timer=respawn_max;
		}
		if(place_meeting(x, y, obj_dasher)){
			audio_sound_pitch(hit, random_range(.8,1.2));
			audio_play_sound(hit, 1, false);
			guardalpha+=0.34;
			LIFE--;
			image_blend = make_color_rgb(230,150,160);
			respawn_timer=respawn_max;
		}
		if(place_meeting(x, y, obj_bird)){
			var hit_enemy = instance_place(x,y,obj_bird);
			if(!hit_enemy.back){
				guardalpha+=0.34;
				audio_sound_pitch(hit, random_range(.8,1.2));
				audio_play_sound(hit, 1, false);
				LIFE--;
				image_blend = make_color_rgb(230,150,160);
			}
			respawn_timer=respawn_max;
		}
	}
}