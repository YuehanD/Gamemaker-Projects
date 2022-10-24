/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


t++;

distance = sqrt(power(y-obj_player.y,2)+power(x-obj_player.x,2));

if(chase){
	restart  = false;
	if(sign(x-player_x)*(x-player_x)>5){
		x-=sign(x-player_x)* 3;
	}
	if(sign(y-player_y)*(y-player_y)>5){
		y-=sign(y-player_y)* 3;
	}
}else{
	if(!restart){
		x = lerp(x, pos_left+(pos_right-pos_left)/2, 0.01);
		y = lerp(y, pos_height, 0.01);
	}else{
		y = pos_height+sin(t/10)*20;

		if(x>=pos_right || x<=pos_left){
			sp*=-1;
		}

		x+=sp;
	}
	
	if(x+20>pos_left+(pos_right-pos_left)/2 && x-20<pos_left+(pos_right-pos_left)/2 && y+20>pos_height && y-20 <pos_height){
		restart = true;
	}

}

