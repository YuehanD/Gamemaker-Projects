/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


switch(direc){
	case 0:
		x+=sp;
		break;
	case 1:
		x-=sp;
		break;
	case 2:
		y+=sp;
		break;
	case 3:
		y-=sp;
		break;
}

if(x<-5 || x>room_width+5 || y<-5 || y> room_height+5){
	instance_destroy ();
}

if(place_meeting(x, y, obj_enemy)){
	SCORE++;
	var shoot_enemy = instance_place(x,y,obj_enemy);
	instance_destroy(shoot_enemy);
	instance_destroy();
}