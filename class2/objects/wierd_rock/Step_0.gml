/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
x+=xspeed;

event_inherited();

bounce_timer --;

if(bounce_timer<=0){
	sp = -bounce_vstrength;
	xspeed = random_range(-bounce_hstrength, bounce_hstrength);
	
	bounce_timer = random_range(bounce_time_min, bounce_time_max);
}