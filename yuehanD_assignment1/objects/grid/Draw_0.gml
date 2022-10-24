/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

i = 100;
j = 100;
draw_set_color(c_white);
draw_text(100, 70, "UP DOWN LEFT RIGHT for Moving, Left mouse button for changing color, right mouse button for changing character")

draw_set_color(c_blue);
while(i<=100+size*ycells){
	//draw_line(0, i, room_width, i+100);
	draw_line(100, i, 100+size*xcells, i);
	i+=size;
}

while(j<=100+size*xcells){
	draw_line(j, 100, j, 100+size*ycells);   
	j+=size;
}
draw_set_color(c_white);
if(count_frame%80 <30){
	draw_line(50, 50, 50, 100+size*ycells+50);
	draw_line(50, 50, 100+size*xcells+50, 50);
	draw_line(50, 100+size*ycells+50, 100+size*xcells+50, 100+size*ycells+50);
	draw_line(100+size*xcells+50, 50, 100+size*xcells+50, 100+size*ycells+50);
}