/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码



if(y<room_height - horizon || jmp){
	accel+=grav;
	y+=accel;
}
if(y>=room_height - horizon){
	accel = 0;
	jmp=false;
}
if(respawn_timer>0){
	respawn_timer--;
}else if(respawn_timer==0){
	image_blend =c_white;
}

if(keyboard_check(vk_left)|| keyboard_check(ord("A"))){
	direc = 1;
	x-=mvsp;
	sprite_index = walk;
	if(image_xscale>0){
		image_xscale*=-1;
	}
}

if(keyboard_check(vk_right)||keyboard_check(ord("D"))){
	direc = 0;
	x+=mvsp;
	sprite_index = walk;
	if(image_xscale<0){
		image_xscale*=-1;
	}
}

if(keyboard_check_pressed(vk_space) && !jmp){
	accel = -20;
	jmp=true;
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

if(place_meeting(x, y, obj_reward)){
	SCORE+=10;
	LIFE++;
	var shoot_reward = instance_place(x,y,obj_reward);
	instance_destroy(shoot_reward);
}

if(respawn_timer<=0){
	if(place_meeting(x, y, obj_enemy)){
		LIFE--;
		image_blend = make_color_rgb(230,150,160);
		var hit_enemy = instance_place(x,y,obj_enemy);
		instance_destroy(hit_enemy);
		respawn_timer=respawn_max;
	}
}