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
