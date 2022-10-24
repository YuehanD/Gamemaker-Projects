/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

recover--;
if(place_meeting(x, y, obj_bullet) && recover<0){
	instance_destroy(instance_place(x, y, obj_bullet));
	state--;
	recover = 3;
}

if(state<=0){
	player_score++;
	instance_destroy();
}

if(recovering>0){
	time++;
	if(time%10==0){
		state++;
	}
	if(state>4){state=4;}
}else{
	time=0;
}