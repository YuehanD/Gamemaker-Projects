/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_set_alpha(1);
draw_self();
if(guard_timer>0){
	guard_timer--;
	draw_set_alpha(1);
	draw_sprite(bubble,0,x,y);
}