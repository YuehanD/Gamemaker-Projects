/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


x = mouse_x> 10 && mouse_x <room_width-image_xscale*70 ? mouse_x: x;
y = (mouse_y> 0.7 *room_height) && (mouse_y<room_height-image_yscale*70) ? mouse_y : y;

if(place_meeting(x, y, obj_mushroom)){
	msr = instance_place(x, y, obj_mushroom);
	if(x>msr.x){
		x = msr.x+16;
	}else{
		x=msr.x-16;
	}
}

if(mouse_check_button(mb_left)){
	if(shoot_interval<=0){
		instance_create_depth(x, y ,0, obj_bullet);
		shoot_interval = shoot_interval_max;
	}
}

shoot_interval--;

if(place_meeting(x, y, obj_enemy) && create_time<0){
	life--;
	recovering = 60;
}

if(recovering>0){
	instance_destroy();
	player=false;
}

create_time--;