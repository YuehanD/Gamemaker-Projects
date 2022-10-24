/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(shake_timer>0){
	shake_timer--;
	
	shake_x = random_range(-shake_amt, shake_amt);
	shake_y = random_range(-shake_amt, shake_amt);
}else{
	shake_x = 0;
	shake_y = 0;
}

camera_set_view_pos(view_camera[view_current], shake_x, shake_y);