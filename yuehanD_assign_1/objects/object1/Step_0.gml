/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


frame++;
if(frame%60==0){
	third++;
}

if keyboard_check(vk_left)
{
    if(x>100){
		x-=3;
	}
}
if keyboard_check(vk_right)
{
    if(x<room_width-300){
		x+=5;
	}
}

if keyboard_check(vk_up)
{
    if(y>(room_height/2)+50){
		y-=5;
	}
}

if keyboard_check(vk_down)
{
    if(y<room_height-100){
		y+=5;
	}
}

if(mouse_check_button_pressed(mb_left)){
	a = mouse_x;
	b = mouse_y;
	if(a>0 && a< room_width && b>0 && b< room_height/2 -50){
		stars[array_length(stars)] = [mouse_x,mouse_y];
	}
	
}

