/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

switch(color%7){
	case 0:
		draw_set_color(c_fuchsia);
		break;
	case 1:
		draw_set_color(c_blue);
		break;
	case 2:
		draw_set_color(c_lime);
		break;
	case 3:
		draw_set_color(c_yellow);
		break;
	case 4:
		draw_set_color(c_dkgray);
		break;
	case 5:
		draw_set_color(c_olive);
		break;
	case 6:
		draw_set_color(c_maroon);
		break;
}

draw_rectangle(x, y, x+grid.size, y+grid.size, false);

draw_set_color(c_white);


switch(display%3){
	case 0:
		draw_circle(shape_x, shape_y-20, 15, false);
		draw_circle(shape_x, shape_y+20, 25, false);
		break;
	case 1:
		draw_triangle(shape_x, shape_y-40, shape_x-20, shape_y-10, shape_x+20, shape_y-10, false);
		draw_triangle(shape_x, shape_y-13, shape_x-30, shape_y+20, shape_x+30, shape_y+20, false);
		draw_rectangle(shape_x-10, shape_y+20, shape_x+10, shape_y+40, false);
		break;
	case 2:
		draw_triangle(shape_x, shape_y-40, shape_x-25, shape_y+35, shape_x, shape_y+15, false);
		draw_triangle(shape_x, shape_y-40, shape_x+25, shape_y+35, shape_x, shape_y+15, false);
		draw_triangle(shape_x-40, shape_y-15, shape_x, shape_y+15, shape_x+40, shape_y-15, false);
		break;

}



