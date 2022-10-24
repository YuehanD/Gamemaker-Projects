/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(!got_hit){
	if(keyboard_check(vk_right)){
		x = x+mspd;
	}

	if(keyboard_check(vk_left)){
		x = x-mspd;
	}

	if(keyboard_check(vk_up)){
		y = y-mspd;
	}

	if(keyboard_check(vk_down)){
		y = y+mspd;
	}

	if(place_meeting(x,y,rocks)){
		//image_blend = c_red;
		got_hit = true;
		var hit_rock = instance_place(x, y, rocks);
		//instance_destroy(hit_rock);
		hit_rock.y = 0;
		hit_rock.x = random(room_width);
		hit_rock.sp = 0;
	}
}

if(got_hit){
	respawn_timer -=1;
	
	if(respawn_timer<=0){
		LIVES --;
		
		respawn_timer = respawn_timer_max;
		got_hit = false;
	}
	
	with(rocks){
		x = random_range(-200, 0);
		y = random_range(-200, 0);
		sp = 0;
	}
	
	if(LIVES <=0){
		room_goto_next();
	}
	
	
}