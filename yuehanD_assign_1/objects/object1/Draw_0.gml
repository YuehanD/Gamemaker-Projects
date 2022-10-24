/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_set_color(make_colour_rgb(15, 60, 145));
draw_rectangle(0,0, room_width, room_height/2, false);
draw_set_color(make_colour_rgb(10, 15, 115));
draw_rectangle(0,room_height/2, room_width, room_height+1, false);

draw_set_color(make_colour_rgb(210, 210, 200));
draw_circle(200, 200, 100, false);

draw_set_color(make_colour_rgb(15, 60, 145));

switch(third%12){
	case 0:
		draw_circle(75, 200, 100, false);
		break;
	case 1:
		draw_circle(105, 200, 100, false);
		break;
	case 2:
		draw_circle(135, 200, 100, false);
		break;
	case 3:
		draw_circle(165, 200, 100, false);
		break;
	case 4:
		draw_circle(195, 200, 100, false);
		break;
	case 5:
		draw_circle(225, 200, 100, false);
		break;
	case 6:
		draw_circle(255, 200, 100, false);
		break;
	case 7:
		draw_circle(285, 200, 100, false);
		break;
	case 8:
		draw_circle(315, 200, 100, false);
		break;
	case 9:
		draw_circle(345, 200, 100, false);
		break;
	case 10:
		draw_circle(375, 200, 100, false);
		break;
	case 11:
		break;
}

draw_set_color(c_white);


draw_rectangle(x, y, x+200,y+50, false); 
draw_triangle(x-50, y, x,y+50, x+50, y, false);
draw_triangle(x+250, y, x+200,y+50, x+200, y, false);
draw_rectangle(x+99, y-150, x+101, y+10, false); 
draw_triangle(x+99, y-150, x+170,y-100, x+99, y-50, false);

for(i=0; i<array_length(stars); i++){
	a = stars[i][0];
	b = stars[i][1];
	len = 6;
	draw_triangle(a, b-3*len, a-2*len, b+(2.5*len), a, b+len, false);
	draw_triangle(a, b-3*len, a+2*len, b+(2.5*len), a, b+len, false);
	draw_triangle(a-3*len, b-len, a, b+len, a+3*len, b-len, false);
}

