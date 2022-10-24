/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(player_win){
	
	return;
}

if(keyboard_check_pressed(vk_space)){
	show_debug_message(" display: "+ string((shape.display)%3) + ",  color: " + string(color%7) + "\n")
	show_debug_message("pair display: "+ string(pair.display) + ", pair color: " + string(pair.color%7) + "\n")
	show_debug_message("pair pos "+ string(pair.x) + ", " + string(pair.y) + "\n")
	show_debug_message("pos "+ string(x) + ", " + string(y) + "\n")
	show_debug_message(string(x==pair.x && y == pair.y && color%7 == pair.color && (shape.display)%3 == pair.display))

}


if(round(x)==round(pair.x) && round(y) == round(pair.y)){
	if(color%7 == pair.color%7 && (shape.display)%3 == pair.display%3){
		show_debug_message("congratulations");
		player_win = true;
	}
}

if(mouse_check_button_pressed(mb_left)){
	color++;
	show_debug_message(" display: "+ string(pair.display) + ",  color: " + string(color) + "\n")
}

if(keyboard_check_pressed(vk_left)){
	if(x>100){
		x -=grid.size;
		shape.x =x +(grid.size/2);
	}
}
if(keyboard_check_pressed(vk_right)){
	if(x<100+(grid.xcells-2)*grid.size){
		//↑ I don't quiet get why I neet to minus 2 here for xcells
		x +=grid.size;
		shape.x =x +(grid.size/2);
	}
}
if(keyboard_check_pressed(vk_up)){
	if(y>100){
		y -=grid.size;
		shape.y = y +(grid.size/2);
	}
}
if(keyboard_check_pressed(vk_down)){
	if(y<100+(grid.ycells-1)*grid.size){
		//↑ I don't quiet get why I neet to minus 1 here for xcells
		y +=grid.size;
		shape.y = y +(grid.size/2);
	}
}