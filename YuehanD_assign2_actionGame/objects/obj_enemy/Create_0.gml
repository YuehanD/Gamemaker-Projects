/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

pos_x = random_range(20, room_width-20);
pos_y = random_range(10, room_height-10);

start = random(4);

sp = 5;

if(start<1){
	pos_x = -20;
	xsp = sp;
	ysp = 0;
}else if(start<2){
	pos_x = room_width+20;
	xsp = -sp;
	ysp = 0;
}else if(start <3){
	pos_y = -20;
	xsp = 0;
	ysp = sp;
}else{
	pos_y = room_height+20;
	xsp = 0;
	ysp = -sp;
}

x=pos_x;
y=pos_y;
