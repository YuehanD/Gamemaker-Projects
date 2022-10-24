/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(x>room_width+19){
	image_xscale*=-1;
}
if(room!=room_game){
	instance_destroy();
}


if(wait){
	if(x<70){
		x+=sp;
		if(x>=70){
			wait = false;
			accel = 2;
			sp=0;
		}
	}else if(x>room_width-70){
		x-=sp;
		if(x<=room_width-70){
			wait = false;
			accel = -2;
			sp=0;
		}
	}
}else if(wait_timer>0){
	wait_timer--;
	if(wait_timer<=0){
		audio_sound_pitch(meow, random_range(.8,1.2));
		audio_play_sound(meow, 1, false);
	}
}

if(wait_timer<=0){
	image_speed = 2*abs(sp)/20;
	if(accel>0){
		if(sp<20){
			sp+=accel;
		}
	}else{
		if(sp>-20){
			sp+=accel;
		}
	}
	x+=sp;
}

if(x<-40 || x>room_width+40){
	instance_destroy();
}