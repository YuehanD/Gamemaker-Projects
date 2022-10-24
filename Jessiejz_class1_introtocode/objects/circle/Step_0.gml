/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

//run repeatedly every frame, 60/s

if(keyboard_check_pressed(vk_space)){
	switch_case = !switch_case;
}

if(switch_case){
	if(snowman_x <= room_width-50 && snowman_x >= 50 && snowman_y <= room_height && snowman_y > 50){
		snowman_x += snowman_speedx;
		snowman_y += snowman_speedy;
	}else{
		if(snowman_x >= room_width-50 || snowman_x <= 50){
			snowman_speedx *= -1;
			snowman_x += snowman_speedx;
			snowman_y += snowman_speedy;
		}else{
			snowman_speedy *= -1;
			snowman_x += snowman_speedx;
			snowman_y += snowman_speedy;
		}		
	}
}