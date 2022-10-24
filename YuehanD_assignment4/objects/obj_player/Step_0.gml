if(keyboard_check(vk_control) && keyboard_check(vk_enter)){
	mode = !mode;
}

if(!mode){
	/// @description 在此处插入描述 
	// 你可以在此编辑器中写入代码 
	if(invincible>0){
		invincible--;
	}

	pre_vsp = vsp;

	t+=0.08;

	var hmove = keyboard_check(vk_right) - keyboard_check(vk_left);
	var jump_press = keyboard_check_pressed(vk_space);

	on_ground = place_meeting(x,y+1, obj_collide_water) || place_meeting(x,y+1, obj_collide);

	//if(on_ground){air_jumps = air_jumps_max;}

	msp+=accel*hmove;

	if(hmove!=0){
		if(image_angle<20&&image_angle>-20){
			image_angle-=hmove/2;
		}
	}else{
		image_angle = lerp(image_angle, 0, 0.1);
	}

	msp = clamp(msp, -maxsp, maxsp);
	vsp+=grav;
	image_blend = c_white;
	if(jump_press && on_ground){
		just_jump = true;
		vsp = -jump_str;
		buoyancy = 1.6;
	}

	if(vsp>=0){
		for(i=x-image_xscale/2;i<=x+image_xscale/2; i+=image_xscale/4){
			if(position_meeting(i, y+image_yscale/2, obj_collide_water)){
				just_jump = false;
			}
		}
	}

	if(hmove ==0){
		var start_sign = sign(msp);
		msp -= decel * start_sign;
	
		if(start_sign!=sign(msp)){msp=0;}
	}

	if(place_meeting(x, y, obj_enemy) && invincible==0){
		life-=0.15;
		if(life<0){life=0;}
		invincible = 30;
	}

	if(place_meeting(x,y, obj_collide_water)&&on_ground){
		if(place_meeting(x,y, obj_base_water)){
			buoyancy = 1.6;
		}else{
			this_water = instance_place(x, y, obj_collide_water);
			buoyancy = (1+.4*sin(t))* clamp((bbox_bottom - this_water.bbox_top)/sprite_height, 0, 1);
		}
		vsp -= buoyancy;
		if(!just_jump){
			vsp*=0.8;
		}
		if((!last_pos-y)<80 && !splash){
			instance_create_depth(x, y, 0, obj_splash);
			splash=true;
		}
		if(keyboard_check(vk_down)){
			vsp=2;
		}
		life+=0.0008;
		if(life>1){life=1;}
	}else{
		life-=0.001;
		if(life<0){life=0;}
	}




	if(place_meeting(x, y-image_yscale, obj_collide_water)&&!jump_press){
		obj_meet = place_meeting(x, y-image_yscale/1.5, obj_collide_water){
			if(y<obj_meet.y){
				if(vsp<-jump_str-5){
					vsp/=1.2;
				}
			}
		}
	}
	
	x_bump = false;





	if(hmove ==0){
		var start_sign = sign(msp);
		msp -= decel * start_sign;
	
		if(start_sign!=sign(msp)){msp=0;}
	}

	for(var i=0; i<abs(msp); i++){
		if(!place_meeting(x+sign(msp),y, obj_collide)){
			x+=sign(msp);
		}else{
			image_angle = lerp(image_angle, 0, 0.1);
			x_bump=true;
			break;
		}
	}
	//check each pixel we might move for a colision
	for(var i=0; i<abs(vsp); i++){
		if(!place_meeting(x,y+sign(vsp), obj_collide)){
			y+=sign(vsp);
		}else{
			image_angle = lerp(image_angle, 0, 0.1);
			vsp=0;
			break;
		}
	}




	/**
	for(var i=0; i<abs(msp); i++){
		if(!place_meeting(x+sign(msp),y, obj_collide)){
			x+=sign(msp);
		}else{
			msp=0;
			break;
		}
	}
	//check each pixel we might move for a colision
	for(var i=0; i<abs(vsp); i++){
		if(!place_meeting(x,y+sign(vsp), obj_collide)){
			y+=sign(vsp);
		}else{
			vsp=0;
			break;
		}
	}

	*/
}else{
	var hmove = keyboard_check(vk_right) - keyboard_check(vk_left);
	var vmove = keyboard_check(vk_up) - keyboard_check(vk_down);
	x += 5*hmove;
	y += -5*vmove;
}