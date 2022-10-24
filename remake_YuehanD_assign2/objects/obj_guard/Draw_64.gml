/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



draw_set_alpha(1);
if(guard){
	draw_sprite(guard_base,0,x,y);
}
draw_set_alpha(guardalpha);
draw_sprite(guard_color,0,x,y);

draw_set_alpha(1);
draw_sprite(guard_line,0,x,y);