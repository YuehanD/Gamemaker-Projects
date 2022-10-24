/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_set_color(c_white);


switch(display%3){
	case 0:
		draw_circle(x, y-20, 15, false);
		draw_circle(x, y+20, 25, false);
		break;
	case 1:
		draw_triangle(x, y-40, x-20, y-10, x+20, y-10, false);
		draw_triangle(x, y-13, x-30, y+20, x+30, y+20, false);
		draw_rectangle(x-10, y+20, x+10, y+40, false);
		break;
	case 2:
		draw_triangle(x, y-40, x-25, y+35, x, y+15, false);
		draw_triangle(x, y-40, x+25, y+35, x, y+15, false);
		draw_triangle(x-40, y-15, x, y+15, x+40, y-15, false);
		break;

}
